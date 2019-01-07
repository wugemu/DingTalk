.class public final Lbir;
.super Ljava/lang/Object;
.source "SelectUserHolder.java"


# instance fields
.field public a:Laym;

.field public b:J

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public f:Landroid/widget/CheckBox;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field k:Z

.field l:Laym$a;

.field private m:Landroid/app/Activity;

.field private n:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Laym;Landroid/view/View;ZLaym$a;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "selectUserAdapter"    # Laym;
    .param p3, "rootView"    # Landroid/view/View;
    .param p4, "isSingleChooseMode"    # Z
    .param p5, "chooseListener"    # Laym$a;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lbir;->m:Landroid/app/Activity;

    .line 48
    iput-object p2, p0, Lbir;->a:Laym;

    .line 49
    iput-object p3, p0, Lbir;->n:Landroid/view/View;

    .line 50
    iput-boolean p4, p0, Lbir;->k:Z

    .line 51
    iput-object p5, p0, Lbir;->l:Laym$a;

    .line 1068
    iget-object v0, p0, Lbir;->n:Landroid/view/View;

    sget v1, Laxp$f;->tv_letter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbir;->c:Landroid/widget/TextView;

    .line 1069
    iget-object v0, p0, Lbir;->n:Landroid/view/View;

    sget v1, Laxp$f;->tv_conversation_owner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbir;->d:Landroid/widget/TextView;

    .line 1070
    iget-object v0, p0, Lbir;->n:Landroid/view/View;

    sget v1, Laxp$f;->avatarView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lbir;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1071
    iget-object v0, p0, Lbir;->n:Landroid/view/View;

    sget v1, Laxp$f;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lbir;->f:Landroid/widget/CheckBox;

    .line 1072
    iget-object v0, p0, Lbir;->n:Landroid/view/View;

    sget v1, Laxp$f;->tv_contact_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbir;->g:Landroid/widget/TextView;

    .line 1073
    iget-object v0, p0, Lbir;->n:Landroid/view/View;

    sget v1, Laxp$f;->tv_contact_unregister:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbir;->h:Landroid/widget/TextView;

    .line 1074
    iget-object v0, p0, Lbir;->n:Landroid/view/View;

    sget v1, Laxp$f;->divider_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbir;->i:Landroid/view/View;

    .line 1075
    iget-object v0, p0, Lbir;->n:Landroid/view/View;

    sget v1, Laxp$f;->click_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbir;->j:Landroid/view/View;

    .line 53
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 205
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    iget-object v1, p0, Lbir;->m:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lbbi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 206
    return-void
.end method
