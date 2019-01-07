.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1009
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ag()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1015
    add-int/lit8 v6, p3, -0x1

    if-ltz v6, :cond_0

    .line 1018
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    .line 1019
    .local v2, "editText":Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v6

    add-int/lit8 v7, p3, -0x1

    invoke-virtual {v6, v7}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 1020
    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v6

    add-int/lit8 v7, p3, -0x1

    invoke-virtual {v6, v7}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/alibaba/android/ding/base/objects/CommentObject;

    if-eqz v6, :cond_0

    .line 1023
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v6

    add-int/lit8 v7, p3, -0x1

    invoke-virtual {v6, v7}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 1024
    .local v1, "commentObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    if-eqz v1, :cond_0

    .line 1027
    iget-object v6, v1, Lcom/alibaba/android/ding/base/objects/CommentObject;->k:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    sget-object v7, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->SYSTEM:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    if-eq v6, v7, :cond_0

    .line 1030
    iget-wide v6, v1, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->b()Lchy;

    move-result-object v8

    invoke-virtual {v8}, Lchy;->getCurrentUid()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    .line 1032
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v6

    invoke-static {v6}, Lbkh;->F(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1034
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v6

    invoke-static {v6}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1035
    if-eqz v2, :cond_2

    .line 1036
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1037
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1039
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v7, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v7}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v7, Laxp$i;->dt_ding_detail_input_clear_tip:I

    .line 1040
    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Laxp$i;->sure:I

    new-instance v8, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16$2;

    invoke-direct {v8, p0, v2, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16$2;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;Lcom/alibaba/android/ding/base/objects/CommentObject;)V

    .line 1041
    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Laxp$i;->cancel:I

    new-instance v8, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16$1;

    invoke-direct {v8, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16$1;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;)V

    .line 1057
    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 1063
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 1066
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->G(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 1067
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->H(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 1068
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    iget-wide v8, v1, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    invoke-static {v6, v8, v9}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;J)J

    .line 1069
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->I(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 1070
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->l(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)I

    move-result v6

    if-nez v6, :cond_0

    .line 1071
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 1072
    invoke-static {v7}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v7

    .line 1071
    invoke-static {v6, v7}, Lcms;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 1073
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)I

    goto/16 :goto_0

    .line 1078
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->G(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 1079
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->H(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 1080
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lbid;

    if-eqz v6, :cond_0

    .line 1083
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbid;

    .line 1084
    .local v0, "commentHolder":Lbid;
    const-string/jumbo v5, ""

    .line 1085
    .local v5, "nick":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1274
    iget-object v6, v0, Lbid;->a:Landroid/widget/TextView;

    .line 1086
    if-eqz v6, :cond_5

    .line 2274
    iget-object v6, v0, Lbid;->a:Landroid/widget/TextView;

    .line 1087
    invoke-virtual {v6}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 3274
    iget-object v6, v0, Lbid;->a:Landroid/widget/TextView;

    .line 1088
    invoke-virtual {v6}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1094
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->q(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/util/Map;

    move-result-object v6

    iget-wide v8, v1, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getSelectionStart()I

    move-result v3

    .line 1096
    .local v3, "index":I
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "@"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "\u0007"

    .line 1097
    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1096
    invoke-interface {v6, v3, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1098
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->x(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v6

    invoke-static {v6, p3}, Lcpc;->b(Landroid/widget/AbsListView;I)V

    .line 1099
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 1100
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->l(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)I

    move-result v6

    if-nez v6, :cond_0

    .line 1101
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 1102
    invoke-static {v7}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v7

    .line 1101
    invoke-static {v6, v7}, Lcms;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 1103
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)I

    goto/16 :goto_0

    .line 1089
    .end local v3    # "index":I
    :cond_5
    if-eqz v0, :cond_4

    .line 4274
    iget-object v6, v0, Lbid;->a:Landroid/widget/TextView;

    .line 1090
    if-eqz v6, :cond_4

    .line 5274
    iget-object v6, v0, Lbid;->a:Landroid/widget/TextView;

    .line 1091
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 6274
    iget-object v6, v0, Lbid;->a:Landroid/widget/TextView;

    .line 1092
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1108
    .end local v0    # "commentHolder":Lbid;
    .end local v5    # "nick":Ljava/lang/String;
    :cond_6
    iget v6, v1, Lcom/alibaba/android/ding/base/objects/CommentObject;->h:I

    sget-object v7, Lcom/alibaba/android/ding/base/objects/CommentObject$CONFIRM_TYPE;->FINISH_COMMENT:Lcom/alibaba/android/ding/base/objects/CommentObject$CONFIRM_TYPE;

    .line 1109
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/CommentObject$CONFIRM_TYPE;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_7

    const/4 v4, 0x1

    .line 1110
    .local v4, "isFinishComment":Z
    :goto_2
    if-nez v4, :cond_0

    .line 1111
    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/ding/base/objects/CommentObject;)V

    goto/16 :goto_0

    .line 1109
    .end local v4    # "isFinishComment":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_2
.end method
