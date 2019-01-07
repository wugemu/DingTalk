.class final Lewl$5$1;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewl$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lewl$5;


# direct methods
.method constructor <init>(Lewl$5;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lewl$5;

    .prologue
    .line 888
    iput-object p1, p0, Lewl$5$1;->b:Lewl$5;

    iput-object p2, p0, Lewl$5$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 891
    const/4 v0, 0x0

    .line 892
    .local v0, "enabled":Z
    iget-object v1, p0, Lewl$5$1;->a:Ljava/lang/String;

    const-string/jumbo v2, "FALSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 893
    const/4 v0, 0x0

    .line 897
    :cond_0
    :goto_0
    const-string/jumbo v1, "screen_notification"

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 898
    return-void

    .line 894
    :cond_1
    iget-object v1, p0, Lewl$5$1;->a:Ljava/lang/String;

    const-string/jumbo v2, "TRUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 895
    const/4 v0, 0x1

    goto :goto_0
.end method
