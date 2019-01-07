.class public Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;
.super Landroid/widget/FrameLayout;
.source "MessageRecipientsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:I

.field private g:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const/16 v0, 0x9

    iput v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->f:I

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b:I

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c:Ljava/util/Map;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->i:Z

    .line 60
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$1;-><init>(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->k:Landroid/content/BroadcastReceiver;

    .line 82
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/16 v0, 0x9

    iput v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->f:I

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b:I

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c:Ljava/util/Map;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->i:Z

    .line 60
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$1;-><init>(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->k:Landroid/content/BroadcastReceiver;

    .line 87
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/16 v0, 0x9

    iput v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->f:I

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b:I

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c:Ljava/util/Map;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->i:Z

    .line 60
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$1;-><init>(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->k:Landroid/content/BroadcastReceiver;

    .line 92
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    .prologue
    .line 46
    iget v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b:I

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ldby$b;->layout_message_recipients_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 97
    sget v0, Ldby$a;->tv_selection_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->d:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$2;-><init>(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    sget v0, Ldby$a;->btn_finish_select:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->e:Landroid/widget/Button;

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->e:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$3;-><init>(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$4;-><init>(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 128
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b()V

    .line 129
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c:Ljava/util/Map;

    return-object v0
.end method

.method private b()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, "conversationsCount":I
    const/4 v0, 0x0

    .line 139
    .local v0, "contactsCount":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 140
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 141
    .local v2, "data":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v5, v6, :cond_1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v5, v6, :cond_0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "data":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    :cond_2
    if-lez v1, :cond_5

    .line 149
    if-lez v0, :cond_4

    .line 150
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->e:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Ldby$c;->dt_im_trans_to_multiple_selected_recipients:I

    new-array v7, v11, [Ljava/lang/Object;

    .line 152
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 151
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :goto_1
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->h:Z

    if-eqz v4, :cond_3

    .line 167
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->e:Landroid/widget/Button;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Ldby$c;->sure:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const-string/jumbo v6, "("

    aput-object v6, v5, v9

    add-int v6, v0, v1

    .line 168
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const/4 v6, 0x3

    const-string/jumbo v7, "/"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget v7, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->f:I

    .line 169
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string/jumbo v7, ")"

    aput-object v7, v5, v6

    .line 167
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_3
    return-void

    .line 154
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->e:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Ldby$c;->dt_im_trans_to_multiple_selected_groups:I

    new-array v7, v9, [Ljava/lang/Object;

    .line 156
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 155
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 158
    :cond_5
    if-lez v0, :cond_6

    .line 159
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->e:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 160
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Ldby$c;->dt_im_trans_to_multiple_selected_members:I

    new-array v7, v9, [Ljava/lang/Object;

    .line 161
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 160
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 163
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Ldby$c;->dt_im_trans_to_multiple_selected_tip:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->e:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->i:Z

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 288
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v1, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->j:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->j:I

    :goto_0
    new-array v5, v2, [Ljava/lang/Object;

    iget v6, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->f:I

    .line 290
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 289
    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v4, Ldby$c;->sure:I

    const/4 v5, 0x0

    .line 291
    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1168
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->a:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->a:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 292
    :goto_1
    if-nez v1, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 295
    :cond_0
    return-void

    .line 289
    :cond_1
    sget v1, Ldby$c;->dt_im_trans_to_multiple_recipients_exceed_tips:I

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1168
    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->g:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->k:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 283
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b()V

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a:Z

    .line 285
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "useCountStatusHint"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->h:Z

    .line 133
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b()V

    .line 134
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;)Z
    .locals 7
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v2

    .line 210
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    iget v5, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->f:I

    if-lt v4, v5, :cond_2

    .line 211
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c()V

    goto :goto_0

    .line 214
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 215
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 216
    .local v1, "recipientDataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 221
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    .end local v1    # "recipientDataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b()V

    .line 224
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a:Z

    move v2, v3

    .line 225
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 270
    :goto_0
    return v0

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b()V

    .line 269
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a:Z

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 229
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v5

    .line 233
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 234
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 235
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 236
    .local v3, "obj":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    .line 237
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 239
    :cond_4
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 240
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 241
    .local v4, "recipientDataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 242
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 248
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    .end local v3    # "obj":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    .end local v4    # "recipientDataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    :cond_6
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->f:I

    if-le v7, v8, :cond_7

    .line 249
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c()V

    goto :goto_0

    .line 253
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 254
    .local v0, "data":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 256
    .end local v0    # "data":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b()V

    .line 258
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a:Z

    move v5, v6

    .line 259
    goto/16 :goto_0
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "allowEmptySelection"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->i:Z

    .line 175
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b()V

    .line 176
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 278
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getRecipientList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v0, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 300
    return-object v0
.end method

.method public setCallback(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;)V
    .locals 0
    .param p1, "callback"    # Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->g:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;

    .line 203
    return-void
.end method

.method public setLimitTipAT(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->j:I

    .line 186
    return-void
.end method

.method public setRecipientsLimitCount(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 179
    if-lez p1, :cond_0

    .line 180
    iput p1, p0, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->f:I

    .line 182
    :cond_0
    return-void
.end method
