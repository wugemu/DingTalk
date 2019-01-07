.class public Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "CustomLanguagePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog$a;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/content/Context;

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

.field private o:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

.field private p:Lcth;

.field private q:Lcth;

.field private r:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "srcLanguage"    # Ljava/lang/String;
    .param p3, "targetLanguage"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;)V

    .line 29
    sget v0, Lcjj;->E:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->d:I

    .line 30
    sget v0, Lcjj;->k:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->e:I

    .line 31
    sget v0, Lcjj;->k:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->f:I

    .line 32
    sget v0, Lcjj;->s:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->g:I

    .line 33
    sget v0, Lcjj;->x:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->h:I

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->i:Ljava/util/HashMap;

    .line 72
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 73
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->m:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->b:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->c:Ljava/lang/String;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->b:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "item"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcig$j;->dt_common_translate_zh_CN:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string/jumbo v0, "zh_CN"

    .line 169
    :goto_0
    return-object v0

    .line 162
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcig$j;->dt_common_translate_en_US:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    const-string/jumbo v0, "en_US"

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcig$j;->dt_common_translate_es_ES:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    const-string/jumbo v0, "es_ES"

    goto :goto_0

    .line 166
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcig$j;->dt_common_translate_ru_RU:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    const-string/jumbo v0, "ru_RU"

    goto :goto_0

    .line 169
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3
    .param p1, "defaultLanguage"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 225
    const-string/jumbo v0, "en_US"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->o:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->setData(Ljava/util/List;)V

    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->c:Ljava/lang/String;

    .line 239
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->o:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->s:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->o:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->setData(Ljava/util/List;)V

    .line 233
    if-eqz p1, :cond_2

    .line 234
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->c:Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_2
    const-string/jumbo v0, "zh_CN"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->v:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->v:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->v:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->c:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 87
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->j:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->k:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->l:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->l:Ljava/util/List;

    .line 88
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->o:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    if-nez v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->j:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->i:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 92
    .local v0, "srcPosition":I
    if-eq v0, v5, :cond_2

    .line 93
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->setSelectionPosition(I)V

    .line 95
    :cond_2
    const-string/jumbo v2, "en_US"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 96
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->k:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->i:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 97
    .local v1, "targetPosition":I
    if-eq v1, v5, :cond_3

    .line 98
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->o:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->setSelectionPosition(I)V

    .line 107
    .end local v1    # "targetPosition":I
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->r:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;->notifyDataSetChanged()V

    .line 108
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->s:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 100
    .restart local v1    # "targetPosition":I
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->o:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->setSelectionPosition(I)V

    .line 101
    const-string/jumbo v2, "zh_CN"

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->c:Ljava/lang/String;

    goto :goto_1

    .line 104
    .end local v1    # "targetPosition":I
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->o:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->setSelectionPosition(I)V

    .line 105
    const-string/jumbo v2, "en_US"

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->date_btn_cancel:I

    if-eq v0, v1, :cond_0

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->date_btn_sure:I

    if-ne v0, v1, :cond_1

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog$a;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->dismiss()V

    .line 252
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v1, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 113
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 114
    sget v0, Lcig$h;->layout_view_custom_language_picker_dialog:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->setContentView(I)V

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcig$k;->SelectDateDialogAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 119
    :cond_0
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 1126
    sget v0, Lcig$f;->wheel_view_item1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    .line 1127
    sget v0, Lcig$f;->wheel_view_item2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->o:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    .line 1129
    sget v0, Lcig$f;->date_btn_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->t:Landroid/view/View;

    .line 1130
    sget v0, Lcig$f;->date_btn_sure:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->u:Landroid/view/View;

    .line 1134
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->t:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1135
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->u:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->setOnWheelItemSelectedListener(Lctf;)V

    .line 1150
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->o:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->setOnWheelItemSelectedListener(Lctf;)V

    .line 1173
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->m:Landroid/content/Context;

    .line 1174
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1175
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 1176
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcig$j;->dt_common_translate_zh_CN:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcig$j;->dt_common_translate_en_US:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1177
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcig$j;->dt_common_translate_es_ES:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcig$j;->dt_common_translate_ru_RU:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1175
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->j:Ljava/util/List;

    .line 1180
    new-array v0, v6, [Ljava/lang/String;

    .line 1181
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcig$j;->dt_common_translate_zh_CN:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcig$j;->dt_common_translate_es_ES:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcig$j;->dt_common_translate_ru_RU:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1180
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->k:Ljava/util/List;

    .line 1184
    new-array v0, v4, [Ljava/lang/String;

    .line 1185
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcig$j;->dt_common_translate_en_US:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1184
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->l:Ljava/util/List;

    .line 1187
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "zh_CN"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcig$j;->dt_common_translate_zh_CN:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "en_US"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcig$j;->dt_common_translate_en_US:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "es_ES"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcig$j;->dt_common_translate_es_ES:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "ru_RU"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcig$j;->dt_common_translate_ru_RU:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    new-instance v0, Lcth;

    invoke-direct {v0}, Lcth;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->p:Lcth;

    .line 1193
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->p:Lcth;

    .line 2071
    iput-boolean v5, v0, Lcth;->a:Z

    .line 1194
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->p:Lcth;

    const/4 v1, 0x5

    .line 2079
    iput v1, v0, Lcth;->b:I

    .line 1195
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->p:Lcth;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->d:I

    .line 2087
    iput v1, v0, Lcth;->c:I

    .line 1196
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->p:Lcth;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->ui_common_level4_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2103
    iput v1, v0, Lcth;->e:I

    .line 1197
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->p:Lcth;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->e:I

    .line 2111
    iput v1, v0, Lcth;->f:I

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->p:Lcth;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->ui_common_level1_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2127
    iput v1, v0, Lcth;->h:I

    .line 1199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->p:Lcth;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->f:I

    .line 2135
    iput v1, v0, Lcth;->i:I

    .line 1200
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->p:Lcth;

    .line 2231
    iput-boolean v4, v0, Lcth;->u:Z

    .line 1201
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->p:Lcth;

    .line 3191
    iput-boolean v4, v0, Lcth;->p:Z

    .line 1202
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->p:Lcth;

    .line 4119
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcth;->g:F

    .line 1203
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->p:Lcth;

    const-string/jumbo v1, ""

    .line 4143
    iput-object v1, v0, Lcth;->j:Ljava/lang/String;

    .line 1204
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->p:Lcth;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->ui_common_level1_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4151
    iput v1, v0, Lcth;->k:I

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->p:Lcth;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->f:I

    .line 4159
    iput v1, v0, Lcth;->l:I

    .line 1206
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->p:Lcth;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->h:I

    .line 4167
    iput v1, v0, Lcth;->m:I

    .line 1208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->setData(Ljava/util/List;)V

    .line 1209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->p:Lcth;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->setStyle(Lcth;)V

    .line 1210
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->r:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;

    .line 1211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->n:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->r:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->p:Lcth;

    invoke-virtual {v0}, Lcth;->a()Lcth;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->q:Lcth;

    .line 1215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->q:Lcth;

    const-string/jumbo v1, ""

    .line 5143
    iput-object v1, v0, Lcth;->j:Ljava/lang/String;

    .line 1216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->q:Lcth;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->g:I

    .line 5167
    iput v1, v0, Lcth;->m:I

    .line 1217
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->o:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->q:Lcth;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelView;->setStyle(Lcth;)V

    .line 1218
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->s:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelAdapter;

    .line 1219
    invoke-direct {p0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->a(Z)V

    .line 1220
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->a()V

    .line 123
    :cond_1
    return-void
.end method
