.class public Lcom/alibaba/android/oa/view/DDMicroGroupDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "DDMicroGroupDialog.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/GridView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcqu;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcre;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    sget v0, Ledz$i;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;-><init>(Landroid/content/Context;I)V

    .line 79
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/oa/view/DDMicroGroupDialog;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/oa/view/DDMicroGroupDialog;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/view/DDMicroGroupDialog;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->g:Ljava/util/HashMap;

    return-object p1
.end method

.method private a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 222
    iget-object v4, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 223
    .local v3, "size":I
    rsub-int/lit8 v2, v3, 0x9

    .line 224
    .local v2, "paddingItem":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 225
    new-instance v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;-><init>()V

    .line 226
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    const-wide/16 v4, -0x4d

    iput-wide v4, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    .line 227
    iget-object v4, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->c:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/oa/view/DDMicroGroupDialog;Lcre;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/oa/view/DDMicroGroupDialog;
    .param p1, "x1"    # Lcre;
    .param p2, "x2"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 64
    .line 1232
    sget v0, Ledz$f;->oa_entry_new:I

    invoke-virtual {p1, v0}, Lcre;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1233
    invoke-static {}, Leel;->f()Leek;

    move-result-object v1

    invoke-interface {v1, p2}, Leek;->b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Z

    move-result v1

    .line 1234
    if-eqz v0, :cond_0

    .line 1235
    if-eqz v1, :cond_1

    .line 1236
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1240
    :goto_0
    if-eqz p2, :cond_0

    .line 1241
    iget-object v1, p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1242
    const-string/jumbo v1, "NEW"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    :cond_0
    :goto_1
    return-void

    .line 1238
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1243
    :cond_2
    iget-object v1, p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 1244
    iget-object v1, p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1246
    :cond_3
    iget-object v1, p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/oa/view/DDMicroGroupDialog;)Lcqu;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->d:Lcqu;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/oa/view/DDMicroGroupDialog;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->f:J

    return-wide v0
.end method


# virtual methods
.method public final a(Lgtr;J)V
    .locals 2
    .param p1, "microAppGroupObject"    # Lgtr;
    .param p2, "orgId"    # J

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->c:Ljava/util/List;

    .line 93
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lgtr;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->c:Ljava/util/List;

    iget-object v1, p1, Lgtr;->d:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    iget-object v0, p1, Lgtr;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->e:Ljava/lang/String;

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->a()V

    .line 99
    iput-wide p2, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->f:J

    .line 100
    return-void
.end method

.method public dismiss()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->dismiss()V

    .line 113
    iget-object v1, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->g:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcre;

    .line 115
    .local v0, "viewHolder":Lcre;
    sget v2, Ledz$f;->oa_entry_icon:I

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v4, v4, v3}, Lcre;->a(ILjava/lang/String;Landroid/widget/AbsListView;I)Lcre;

    goto :goto_0

    .line 117
    .end local v0    # "viewHolder":Lcre;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 118
    iput-object v4, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->g:Ljava/util/HashMap;

    .line 120
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 105
    sget v0, Ledz$g;->dialog_micro_group:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->setContentView(I)V

    .line 1123
    sget v0, Ledz$f;->dialog_micro_group_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->a:Landroid/widget/TextView;

    .line 1124
    iget-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1128
    :cond_0
    sget v0, Ledz$f;->dialog_micro_group_gridview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->b:Landroid/widget/GridView;

    .line 1129
    new-instance v0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$1;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->getDialogActivity()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->c:Ljava/util/List;

    sget v3, Ledz$g;->oa_entry_item:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$1;-><init>(Lcom/alibaba/android/oa/view/DDMicroGroupDialog;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->d:Lcqu;

    .line 1172
    iget-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->d:Lcqu;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1173
    iget-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->b:Landroid/widget/GridView;

    new-instance v1, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$2;-><init>(Lcom/alibaba/android/oa/view/DDMicroGroupDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    return-void
.end method
