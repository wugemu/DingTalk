.class public final Lfhm;
.super Ljava/lang/Object;
.source "CommonContactModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lfhm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/user/contact/homepage/CommonContactItem;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v0, -0x1

    .line 9
    check-cast p1, Lfhm;

    .line 1032
    if-nez p1, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return v0

    .line 1036
    :cond_1
    if-eq p0, p1, :cond_3

    .line 1040
    iget-boolean v1, p0, Lfhm;->b:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lfhm;->b:Z

    if-eqz v1, :cond_0

    .line 1044
    :cond_2
    iget-boolean v0, p0, Lfhm;->b:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lfhm;->b:Z

    if-eqz v0, :cond_3

    .line 1045
    const/4 v0, 0x1

    goto :goto_0

    .line 1048
    :cond_3
    const/4 v0, 0x0

    .line 9
    goto :goto_0
.end method
