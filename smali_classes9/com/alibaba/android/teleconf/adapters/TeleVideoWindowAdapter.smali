.class public Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;
.super Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;
.source "TeleVideoWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Ljava/lang/String;
    .locals 6
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 284
    if-nez p1, :cond_1

    .line 285
    const-string/jumbo v0, ""

    .line 291
    :cond_0
    :goto_0
    return-object v0

    .line 287
    :cond_1
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 288
    .local v0, "nickName":Ljava/lang/String;
    :goto_1
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$l;->conf_txt_me_flag:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    .end local v0    # "nickName":Ljava/lang/String;
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    goto :goto_1
.end method

.method private a(Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$a;I)V
    .locals 17
    .param p1, "holder"    # Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$a;
    .param p2, "position"    # I

    .prologue
    .line 180
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;

    if-eqz v13, :cond_5

    move-object/from16 v12, p1

    .line 181
    check-cast v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;

    .line 182
    .local v12, "windowViewHolder":Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->itemView:Landroid/view/View;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->b:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 185
    .local v9, "surfaceObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v9, :cond_5

    iget-object v13, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v13, :cond_5

    iget-object v13, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 187
    invoke-virtual {v13}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 188
    iget-object v13, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v13}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v10

    .line 189
    .local v10, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, "nickName":Ljava/lang/String;
    iget-object v13, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v13}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v11

    .line 191
    .local v11, "userState":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    invoke-static {v11}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getStringByState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, "stateStr":Ljava/lang/String;
    iget-object v13, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v13}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted()Z

    move-result v5

    .line 193
    .local v5, "isMicMuted":Z
    iget-object v13, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v13}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted()Z

    move-result v3

    .line 194
    .local v3, "isCamMuted":Z
    iget-object v13, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v13}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isAudioRunning()Z

    move-result v13

    if-nez v13, :cond_0

    iget-object v13, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v13}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCallRunning()Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_0
    const/4 v4, 0x1

    .line 195
    .local v4, "isInAudioOrCall":Z
    :goto_0
    iget-object v13, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v13}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCanRecall()Z

    move-result v1

    .line 197
    .local v1, "beCanRecall":Z
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    if-nez v3, :cond_1

    if-eqz v5, :cond_7

    .line 199
    :cond_1
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->setVisibility(I)V

    .line 200
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    const/4 v14, 0x0

    invoke-virtual {v13, v5, v14}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->a(ZZ)V

    .line 202
    if-eqz v3, :cond_2

    .line 203
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->setVisibility(I)V

    .line 204
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    iget-object v14, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 1058
    const/4 v15, 0x0

    invoke-virtual {v13, v6, v14, v15}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 209
    :cond_2
    :goto_1
    iget-object v14, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->e:Lcom/alibaba/android/teleconf/widget/TeleVideoRectRecallView;

    if-eqz v1, :cond_8

    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v14, v13}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectRecallView;->setVisibility(I)V

    .line 211
    iget-object v13, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v13}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isInConf()Z

    move-result v13

    if-eqz v13, :cond_e

    iget-boolean v13, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-nez v13, :cond_e

    .line 212
    sget-object v13, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->e:Ljava/lang/String;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "Show sub window: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v6, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, " pos:"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    if-nez v3, :cond_a

    if-eqz v4, :cond_a

    .line 214
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->setVisibility(I)V

    .line 215
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 216
    if-eqz v1, :cond_9

    .line 218
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    iget-object v14, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v13, v6, v14}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_3
    :goto_3
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->itemView:Landroid/view/View;

    sget v14, Leuj$h;->conf_stroke_transperent_rect_shape:I

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    invoke-virtual {v9}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a()Z

    move-result v13

    if-eqz v13, :cond_4

    if-eqz v3, :cond_4

    .line 248
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->setVisibility(I)V

    .line 274
    :cond_4
    :goto_4
    invoke-virtual {v12}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->a()V

    .line 277
    .end local v1    # "beCanRecall":Z
    .end local v3    # "isCamMuted":Z
    .end local v4    # "isInAudioOrCall":Z
    .end local v5    # "isMicMuted":Z
    .end local v6    # "nickName":Ljava/lang/String;
    .end local v8    # "stateStr":Ljava/lang/String;
    .end local v9    # "surfaceObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .end local v10    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v11    # "userState":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    .end local v12    # "windowViewHolder":Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;
    :cond_5
    return-void

    .line 194
    .restart local v3    # "isCamMuted":Z
    .restart local v5    # "isMicMuted":Z
    .restart local v6    # "nickName":Ljava/lang/String;
    .restart local v8    # "stateStr":Ljava/lang/String;
    .restart local v9    # "surfaceObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .restart local v10    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .restart local v11    # "userState":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    .restart local v12    # "windowViewHolder":Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 207
    .restart local v1    # "beCanRecall":Z
    .restart local v4    # "isInAudioOrCall":Z
    :cond_7
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->setVisibility(I)V

    goto :goto_1

    .line 209
    :cond_8
    const/16 v13, 0x8

    goto :goto_2

    .line 220
    :cond_9
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    iget-object v14, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v13, v6, v14, v8}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 224
    :cond_a
    iget-object v13, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v13, :cond_d

    .line 226
    iget-object v13, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v13}, Lorg/webrtc/sdk/SophonSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 227
    .local v7, "parent":Landroid/view/ViewParent;
    if-eqz v7, :cond_b

    .line 228
    check-cast v7, Landroid/view/ViewGroup;

    .end local v7    # "parent":Landroid/view/ViewParent;
    iget-object v13, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 231
    :cond_b
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->a:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 232
    .local v2, "childView":Landroid/view/View;
    if-eqz v2, :cond_c

    instance-of v13, v2, Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v13, :cond_c

    .line 233
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 234
    sget-object v13, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->e:Ljava/lang/String;

    const-string/jumbo v14, " Holder reuse"

    invoke-static {v13, v14}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_c
    sget-object v13, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->e:Ljava/lang/String;

    const-string/jumbo v14, "NEW SURFACE VIEW for sub_m window"

    invoke-static {v13, v14}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v13, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lorg/webrtc/sdk/SophonSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 238
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->a:Landroid/widget/FrameLayout;

    iget-object v14, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 239
    iget-object v13, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/webrtc/sdk/SophonSurfaceView;->setVisibility(I)V

    .line 241
    .end local v2    # "childView":Landroid/view/View;
    :cond_d
    if-nez v3, :cond_3

    .line 242
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->setVisibility(I)V

    goto/16 :goto_3

    .line 251
    :cond_e
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->setVisibility(I)V

    .line 252
    iget-boolean v13, v9, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-eqz v13, :cond_10

    .line 253
    sget-object v13, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->e:Ljava/lang/String;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "Hide main sub window: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v6, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, " pos:"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    if-eqz v3, :cond_f

    .line 256
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    const/4 v14, 0x0

    invoke-virtual {v13, v5, v14}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->a(ZZ)V

    .line 258
    :cond_f
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    iget-object v14, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-virtual {v13, v6, v14, v15}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 259
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->itemView:Landroid/view/View;

    sget v14, Leuj$h;->conf_stroke_rect_shape:I

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 261
    :cond_10
    sget-object v13, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->e:Ljava/lang/String;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "Hide avatar window "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v6, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, " pos:"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->itemView:Landroid/view/View;

    sget v14, Leuj$h;->conf_stroke_transperent_rect_shape:I

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 264
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 265
    if-eqz v1, :cond_11

    .line 267
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    iget-object v14, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v13, v6, v14}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 269
    :cond_11
    iget-object v13, v12, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    iget-object v14, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v13, v6, v14, v8}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$a;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->a(Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$a;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 34
    check-cast p1, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$a;

    .line 1099
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1100
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->a(Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$a;I)V

    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;

    if-eqz v0, :cond_0

    .line 1103
    check-cast p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;

    .line 1104
    iget-object v0, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1106
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 1107
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 1108
    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1109
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted()Z

    move-result v3

    .line 1110
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted()Z

    move-result v4

    .line 1111
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isInConf()Z

    move-result v5

    .line 1112
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a()Z

    move-result v6

    .line 1113
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isAudioRunning()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCallRunning()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    const/4 v1, 0x1

    .line 1114
    :goto_1
    iget-object v2, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCanRecall()Z

    move-result v7

    .line 1116
    iget-object v2, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v8

    .line 1117
    invoke-direct {p0, v8}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Ljava/lang/String;

    move-result-object v9

    .line 1119
    iget-object v2, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    iget-object v10, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->e:Lcom/alibaba/android/teleconf/widget/TeleVideoRectRecallView;

    if-eqz v7, :cond_8

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v10, v2}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectRecallView;->setVisibility(I)V

    .line 1122
    if-nez v3, :cond_3

    if-eqz v4, :cond_d

    .line 1123
    :cond_3
    iget-boolean v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-eqz v1, :cond_4

    if-nez v4, :cond_5

    :cond_4
    if-eqz v5, :cond_9

    if-eqz v4, :cond_9

    if-eqz v6, :cond_9

    .line 1125
    :cond_5
    iget-object v1, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->a(ZZ)V

    .line 1126
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    .line 1127
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v1, :cond_6

    .line 1128
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/webrtc/sdk/SophonSurfaceView;->setVisibility(I)V

    .line 1172
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->a()V

    goto/16 :goto_0

    .line 1113
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 1120
    :cond_8
    const/16 v2, 0x8

    goto :goto_2

    .line 1132
    :cond_9
    iget-object v1, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->setVisibility(I)V

    .line 1133
    iget-object v1, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->a(ZZ)V

    .line 1134
    if-eqz v5, :cond_6

    .line 1135
    if-eqz v4, :cond_b

    .line 1136
    iget-object v1, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->setVisibility(I)V

    .line 1137
    iget-object v1, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    iget-object v2, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 2058
    const/4 v3, 0x0

    invoke-virtual {v1, v9, v2, v3}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1141
    :cond_a
    :goto_4
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v1, :cond_6

    .line 1142
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v4, :cond_c

    const/16 v0, 0x8

    :goto_5
    invoke-virtual {v1, v0}, Lorg/webrtc/sdk/SophonSurfaceView;->setVisibility(I)V

    goto :goto_3

    .line 1138
    :cond_b
    iget-boolean v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-nez v1, :cond_a

    .line 1139
    iget-object v1, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->setVisibility(I)V

    goto :goto_4

    .line 1142
    :cond_c
    const/4 v0, 0x0

    goto :goto_5

    .line 1147
    :cond_d
    iget-object v2, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->d:Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectStatusView;->setVisibility(I)V

    .line 1148
    if-eqz v5, :cond_6

    .line 1149
    iget-object v2, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    if-eqz v2, :cond_e

    .line 1150
    iget-object v2, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->d:Lorg/webrtc/sdk/SophonSurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/webrtc/sdk/SophonSurfaceView;->setVisibility(I)V

    .line 1152
    :cond_e
    iget-boolean v2, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    if-nez v2, :cond_6

    .line 1153
    if-eqz v1, :cond_11

    .line 1154
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v0

    .line 1155
    invoke-static {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getStringByState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1157
    if-eqz v7, :cond_10

    .line 1159
    iget-object v0, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    iget-object v1, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v9, v1}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    :cond_f
    :goto_6
    iget-object v0, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1161
    :cond_10
    iget-object v1, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    iget-object v2, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v1, v9, v2, v0}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1166
    :cond_11
    iget-object v0, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;->c:Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleVideoRectAvatarView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 34
    .line 2090
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2280
    sget v1, Leuj$j;->layout_video_window_item:I

    .line 2090
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2091
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter;->c:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2092
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2094
    new-instance v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;

    invoke-direct {v1, v0}, Lcom/alibaba/android/teleconf/adapters/TeleVideoWindowAdapter$a;-><init>(Landroid/view/View;)V

    .line 34
    return-object v1
.end method
