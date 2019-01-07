.class final Lcom/alibaba/android/dingtalkim/models/ShareDelegate$10;
.super Ljava/lang/Object;
.source "ShareDelegate.java"

# interfaces
.implements Ldiz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 796
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$10;->c:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$10;->a:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$10;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 3
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 800
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$10;->c:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$10;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->b(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;)V

    .line 802
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$10;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$10;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$10;->c:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$10;->a:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$10;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->f(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 806
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;I)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "progress"    # I

    .prologue
    .line 819
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 810
    sget v0, Lctk$i;->share_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 812
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[ShareDelegate] "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " sendZFBMessage fail:exception:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ",reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p3, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    return-void
.end method
