.class public Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "TeleConfNotepadDialog.java"


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field public b:Landroid/view/View$OnClickListener;

.field public c:Landroid/view/View$OnClickListener;

.field public d:Landroid/view/View$OnClickListener;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:Z

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/TextView;

.field private r:Ljava/lang/String;

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget v0, Leuj$m;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;-><init>(Landroid/content/Context;I)V

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 55
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->h:Z

    .line 56
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->i:Z

    .line 57
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->j:Z

    .line 58
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->s:Z

    .line 70
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->p:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->p:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->p:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->p:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "editable"    # Z

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->r:Ljava/lang/String;

    .line 135
    iput-boolean p2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->s:Z

    .line 136
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->p:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->p:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 74
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->requestWindowFeature(I)Z

    .line 75
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget v1, Leuj$j;->layout_conf_notepad_dialog:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 79
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 80
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1087
    :cond_0
    sget v1, Leuj$i;->notepad_cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->l:Landroid/view/View;

    .line 1088
    sget v1, Leuj$i;->notepad_save:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->m:Landroid/view/View;

    .line 1089
    sget v1, Leuj$i;->notepad_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->q:Landroid/widget/TextView;

    .line 1090
    sget v1, Leuj$i;->notepad_input_edit:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->p:Landroid/widget/EditText;

    .line 1091
    sget v1, Leuj$i;->notepad_goto_left:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->n:Landroid/widget/TextView;

    .line 1092
    sget v1, Leuj$i;->notepad_goto_right:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->o:Landroid/widget/TextView;

    .line 1096
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->l:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1097
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->m:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1098
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1099
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1101
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1102
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->q:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1105
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->p:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1112
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->n:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->i:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1116
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1117
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->o:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->j:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1121
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->h:Z

    if-eqz v1, :cond_5

    .line 1122
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->m:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    .line 1124
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->m:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
