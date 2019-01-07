.class Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$ChooseAnchorLogic;
.super Ljava/lang/Object;
.source "GroupAnchorListActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChooseAnchorLogic"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x52ebdaddca86b8fdL


# instance fields
.field private mCid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$ChooseAnchorLogic;->mCid:Ljava/lang/String;

    .line 325
    return-void
.end method

.method private handleAddAnchor(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 357
    .local p1, "anchors":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$ChooseAnchorLogic;->mCid:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$ChooseAnchorLogic$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$ChooseAnchorLogic$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$ChooseAnchorLogic;)V

    .line 1162
    new-instance v0, Lbxe$34;

    const/4 v3, 0x0

    iget-object v4, v1, Lbxe;->a:Ljava/util/concurrent/Executor;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lbxe$34;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v0}, Lbxe$34;->start()V

    goto :goto_0
.end method


# virtual methods
.method public doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "objects"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 329
    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 332
    :cond_0
    if-eqz p2, :cond_1

    array-length v5, p2

    if-lez v5, :cond_1

    aget-object v5, p2, v6

    instance-of v5, v5, Landroid/content/Intent;

    if-nez v5, :cond_2

    .line 349
    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    aget-object v2, p2, v6

    check-cast v2, Landroid/content/Intent;

    .line 336
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "choose_user_identities"

    .line 337
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 338
    .local v4, "userIdentityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v4, :cond_1

    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    .local v1, "anchors":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 341
    .local v3, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v3, :cond_3

    .line 342
    new-instance v0, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;-><init>()V

    .line 343
    .local v0, "anchor":Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v6, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;->id:J

    .line 344
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 347
    .end local v0    # "anchor":Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;
    .end local v3    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_4
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$ChooseAnchorLogic;->handleAddAnchor(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method
