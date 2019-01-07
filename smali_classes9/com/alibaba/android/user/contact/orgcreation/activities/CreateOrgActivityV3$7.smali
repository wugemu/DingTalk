.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$7;
.super Ljava/lang/Object;
.source "CreateOrgActivityV3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/media/MediaId;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/laiwang/protocol/media/MediaId;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 885
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$7;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$7;->a:Lcom/laiwang/protocol/media/MediaId;

    iput-object p3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 888
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$7;->a:Lcom/laiwang/protocol/media/MediaId;

    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$7;->a:Lcom/laiwang/protocol/media/MediaId;

    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 889
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$7;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->v(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$7;->a:Lcom/laiwang/protocol/media/MediaId;

    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$7;->a:Lcom/laiwang/protocol/media/MediaId;

    .line 890
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v2

    div-int v8, v1, v2

    .line 891
    .local v8, "height":I
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v9, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 893
    .local v9, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$7;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->v(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 896
    .end local v8    # "height":I
    .end local v9    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 898
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    if-eqz v0, :cond_1

    .line 899
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$7;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->v(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$7;->b:Ljava/lang/String;

    move v5, v4

    move v6, v4

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 903
    :cond_1
    return-void
.end method
