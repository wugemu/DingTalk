.class final Lbib$27;
.super Ljava/lang/Object;
.source "BasicDingViewHolder.java"

# interfaces
.implements Lbht$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbib;


# direct methods
.method constructor <init>(Lbib;)V
    .locals 0
    .param p1, "this$0"    # Lbib;

    .prologue
    .line 1060
    iput-object p1, p0, Lbib$27;->a:Lbib;

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
    .line 1063
    iget-object v0, p0, Lbib$27;->a:Lbib;

    iget-object v0, v0, Lbib;->ae:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v2, p0, Lbib$27;->a:Lbib;

    iget-object v2, v2, Lbib;->ae:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1064
    iget-object v0, p0, Lbib$27;->a:Lbib;

    iget-object v0, v0, Lbib;->ae:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    const v1, 0x12ec0bc

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(ILjava/lang/Object;)V

    .line 1065
    iget-object v0, p0, Lbib$27;->a:Lbib;

    invoke-static {v0}, Lbib;->t(Lbib;)V

    .line 1067
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1071
    iget-object v0, p0, Lbib$27;->a:Lbib;

    iget-object v0, v0, Lbib;->H:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    return-void
.end method
