.class final Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$3;
.super Liak;
.source "CategorySessionListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    invoke-direct {p0}, Liak;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 4
    .param p1, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 160
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v2, v2, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    iput-object p1, v0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    iget-wide v2, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v1, v2, v3}, Ldde;->a(Ljava/lang/String;J)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 4
    .param p1, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 170
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v2, v2, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/CategorySessionListActivity;->finish()V

    .line 173
    :cond_0
    return-void
.end method
