.class final Lgy$c$1;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"

# interfaces
.implements Lha$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgy$c;->a(Lgy;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgy;

.field final synthetic b:Lgy$c;


# direct methods
.method constructor <init>(Lgy$c;Lgy;)V
    .locals 0
    .param p1, "this$0"    # Lgy$c;

    .prologue
    .line 103
    iput-object p1, p0, Lgy$c$1;->b:Lgy$c;

    iput-object p2, p0, Lgy$c$1;->a:Lgy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1
    .param p1, "virtualViewId"    # I

    .prologue
    .line 131
    invoke-static {}, Lgy;->a()Lgx;

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lgy;->c()Ljava/util/List;

    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-static {}, Lgy;->b()Z

    move-result v0

    return v0
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1
    .param p1, "focus"    # I

    .prologue
    .line 141
    invoke-static {}, Lgy;->d()Lgx;

    .line 143
    const/4 v0, 0x0

    return-object v0
.end method
