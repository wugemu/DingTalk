.class final Lfjq$1;
.super Ljava/lang/Object;
.source "LocalContactViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfjq;->a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

.field final synthetic b:Lfjq;


# direct methods
.method constructor <init>(Lfjq;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V
    .locals 0
    .param p1, "this$0"    # Lfjq;

    .prologue
    .line 181
    iput-object p1, p0, Lfjq$1;->b:Lfjq;

    iput-object p2, p0, Lfjq$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 184
    iget-object v0, p0, Lfjq$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    iget-object v2, p0, Lfjq$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 185
    sget v0, Lezg$l;->cannot_add_myself:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lfjq$1;->b:Lfjq;

    iget-object v1, p0, Lfjq$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-static {v0, v1}, Lfjq;->a(Lfjq;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V

    goto :goto_0
.end method
