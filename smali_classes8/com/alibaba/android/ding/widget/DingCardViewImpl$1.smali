.class final Lcom/alibaba/android/ding/widget/DingCardViewImpl$1;
.super Ljava/lang/Object;
.source "DingCardViewImpl.java"

# interfaces
.implements Lbht$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingCardViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/ding/widget/DingCardViewImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingCardViewImpl;JZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingCardViewImpl;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl$1;->c:Lcom/alibaba/android/ding/widget/DingCardViewImpl;

    iput-wide p2, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl$1;->a:J

    iput-boolean p4, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 4
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl$1;->c:Lcom/alibaba/android/ding/widget/DingCardViewImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a(Lcom/alibaba/android/ding/widget/DingCardViewImpl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl$1;->c:Lcom/alibaba/android/ding/widget/DingCardViewImpl;

    iget-wide v2, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl$1;->a:J

    iget-boolean v1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl$1;->b:Z

    invoke-static {v0, v2, v3, v1}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a(Lcom/alibaba/android/ding/widget/DingCardViewImpl;JZ)V

    .line 307
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 311
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl$1;->c:Lcom/alibaba/android/ding/widget/DingCardViewImpl;

    iget-wide v2, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl$1;->a:J

    iget-boolean v1, p0, Lcom/alibaba/android/ding/widget/DingCardViewImpl$1;->b:Z

    invoke-static {v0, v2, v3, v1}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;->a(Lcom/alibaba/android/ding/widget/DingCardViewImpl;JZ)V

    .line 312
    return-void
.end method
