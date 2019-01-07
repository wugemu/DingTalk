.class final Lbag$24;
.super Ljava/lang/Object;
.source "DingDetailPresenter.java"

# interfaces
.implements Lbht$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbag;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbag;


# direct methods
.method constructor <init>(Lbag;)V
    .locals 0
    .param p1, "this$0"    # Lbag;

    .prologue
    .line 614
    iput-object p1, p0, Lbag$24;->a:Lbag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 4
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 617
    iget-object v0, p0, Lbag$24;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbag$24;->a:Lbag;

    invoke-static {v0}, Lbag;->b(Lbag;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v2, p0, Lbag$24;->a:Lbag;

    .line 618
    invoke-static {v2}, Lbag;->b(Lbag;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lbag$24;->a:Lbag;

    invoke-static {v0}, Lbag;->b(Lbag;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    const v1, 0x12ec0bc

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(ILjava/lang/Object;)V

    .line 620
    iget-object v0, p0, Lbag$24;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->o()V

    .line 622
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 626
    return-void
.end method
