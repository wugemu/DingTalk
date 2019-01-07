.class public final Lejo;
.super Ljava/lang/Object;
.source "BurnChatEnterNavigator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-static {}, Lekw;->b()Lekw;

    move-result-object v0

    new-instance v1, Lejo$1;

    invoke-direct {v1, p0}, Lejo$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lekw;->a(Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
