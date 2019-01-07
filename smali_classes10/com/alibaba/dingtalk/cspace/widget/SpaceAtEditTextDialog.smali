.class public Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "SpaceAtEditTextDialog.java"

# interfaces
.implements Lgqi$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$a;
    }
.end annotation


# instance fields
.field protected g:Landroid/widget/FrameLayout;

.field protected h:Landroid/widget/LinearLayout;

.field protected i:Landroid/widget/TextView;

.field protected j:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

.field protected k:Lgqi;

.field protected l:Landroid/widget/TextView;

.field protected m:Landroid/widget/TextView;

.field protected n:Landroid/widget/LinearLayout;

.field protected o:Landroid/widget/TextView;

.field protected p:Ljava/lang/String;

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:Landroid/view/View$OnClickListener;

.field protected t:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$a;

.field protected u:J

.field protected v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field protected w:Landroid/content/BroadcastReceiver;

.field protected x:Ljava/lang/String;

.field protected y:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 77
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 136
    if-eqz p2, :cond_0

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->k:Lgqi;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->v:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgqi;->a(Ljava/util/List;)V

    .line 250
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->u:J

    .line 151
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->y:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->u:J

    invoke-static {v0, v1, v2, v3}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 152
    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->s:Landroid/view/View$OnClickListener;

    .line 284
    return-void
.end method

.method public final a(Landroid/widget/EditText;Ljava/util/Map;)V
    .locals 2
    .param p1, "etMessage"    # Landroid/widget/EditText;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/EditText;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    .local p2, "atUidAndNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$a;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$a;

    invoke-interface {v0, p1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$a;->a(Landroid/widget/EditText;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 160
    return-void
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$a;)V
    .locals 0
    .param p1, "onAtChangeListener"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$a;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$a;

    .line 316
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->x:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->v:Ljava/util/List;

    .line 312
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->n:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->p:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->q:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->k:Lgqi;

    .line 3157
    iget-object v1, v0, Lgqi;->d:Ljava/util/Map;

    iget-object v0, v0, Lgqi;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lgpm;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->r:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public dismiss()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    .line 2192
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->w:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2195
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->w:Landroid/content/BroadcastReceiver;

    .line 98
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->dismiss()V

    .line 99
    return-void
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->k:Lgqi;

    .line 3165
    iget-object v0, v0, Lgqi;->d:Ljava/util/Map;

    .line 307
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->requestWindowFeature(I)Z

    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 88
    sget v0, Lfzs$g;->cspace_at_edit_text_dialog:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->setContentView(I)V

    .line 1102
    sget v0, Lfzs$f;->fl_root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->g:Landroid/widget/FrameLayout;

    .line 1103
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 1105
    sget v0, Lfzs$f;->ll_dialog_loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->h:Landroid/widget/LinearLayout;

    .line 1107
    sget v0, Lfzs$f;->tv_loading_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->o:Landroid/widget/TextView;

    .line 1108
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    :cond_0
    sget v0, Lfzs$f;->ll_dialog_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->n:Landroid/widget/LinearLayout;

    .line 1114
    sget v0, Lfzs$f;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->i:Landroid/widget/TextView;

    .line 1115
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1116
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    :cond_1
    sget v0, Lfzs$f;->et_message:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    .line 1120
    new-instance v0, Lgqi;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    invoke-direct {v0, v1, v2, p0}, Lgqi;-><init>(Landroid/content/Context;Landroid/widget/EditText;Lgqi$a;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->k:Lgqi;

    .line 1122
    sget v0, Lfzs$f;->tv_ok_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->l:Landroid/widget/TextView;

    .line 1123
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->s:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1128
    sget v0, Lfzs$f;->tv_cancel_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->m:Landroid/widget/TextView;

    .line 1129
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1130
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->m:Landroid/widget/TextView;

    invoke-direct {p0, v0, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1163
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->w:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_4

    .line 1166
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$2;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->w:Landroid/content/BroadcastReceiver;

    .line 1186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1187
    const-string/jumbo v1, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1200
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->y:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_5

    .line 1201
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->f()V

    .line 1207
    :goto_0
    return-void

    .line 1204
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1205
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceAtEditTextDialog"

    const-string/jumbo v2, "initData: null mConversationId"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1209
    :cond_6
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$3;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$3;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;)V

    .line 1241
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1242
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->b()V

    .line 1243
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->x:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method
