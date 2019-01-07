.class public final Lknm;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lknm$a;
    }
.end annotation


# instance fields
.field public final a:Lknc;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lkne;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lknc;Lkne;)V
    .locals 0
    .param p1, "networkRequest"    # Lknc;
    .param p2, "cacheResponse"    # Lkne;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lknm;->a:Lknc;

    .line 59
    iput-object p2, p0, Lknm;->b:Lkne;

    .line 60
    return-void
.end method

.method public static a(Lkne;Lknc;)Z
    .locals 3
    .param p0, "response"    # Lkne;
    .param p1, "request"    # Lknc;

    .prologue
    const/4 v0, 0x0

    .line 66
    .line 1098
    iget v1, p0, Lkne;->c:I

    .line 66
    sparse-switch v1, :sswitch_data_0

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 86
    :sswitch_0
    const-string/jumbo v1, "Expires"

    invoke-virtual {p0, v1}, Lkne;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 87
    invoke-virtual {p0}, Lkne;->f()Lkmh;

    move-result-object v1

    .line 1099
    iget v1, v1, Lkmh;->e:I

    .line 87
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 88
    invoke-virtual {p0}, Lkne;->f()Lkmh;

    move-result-object v1

    .line 1115
    iget-boolean v1, v1, Lkmh;->g:Z

    .line 88
    if-nez v1, :cond_1

    .line 89
    invoke-virtual {p0}, Lkne;->f()Lkmh;

    move-result-object v1

    .line 2111
    iget-boolean v1, v1, Lkmh;->f:Z

    .line 89
    if-eqz v1, :cond_0

    .line 100
    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lkne;->f()Lkmh;

    move-result-object v1

    .line 3092
    iget-boolean v1, v1, Lkmh;->d:Z

    .line 100
    if-nez v1, :cond_0

    invoke-virtual {p1}, Lknc;->d()Lkmh;

    move-result-object v1

    .line 4092
    iget-boolean v1, v1, Lkmh;->d:Z

    .line 100
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 66
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
