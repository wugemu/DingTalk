.class public Lcom/alibaba/dingtalk/share/share/view/ShareActionList;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "ShareActionList.java"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "share_channel"

    sput-object v0, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/view/ShareActionList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionList;

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/share/share/view/ShareActionList;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionList;

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/share/share/view/ShareActionList;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionList;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->c:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->dismiss()V

    .line 202
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 121
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 122
    sget v1, Lgvn$g;->view_share_list:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->setContentView(I)V

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 132
    .local v0, "a":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 137
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->setCancelable(Z)V

    .line 138
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->setCanceledOnTouchOutside(Z)V

    .line 1145
    sget v1, Lgvn$e;->root:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->c:Landroid/view/View;

    .line 1146
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->c:Landroid/view/View;

    sget v2, Lgvn$e;->listview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->b:Landroid/widget/ListView;

    .line 1160
    new-instance v1, Lgwh;

    invoke-direct {v1, v4, v4}, Lgwh;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 1161
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->b:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1162
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->b:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/dingtalk/share/share/view/ShareActionList$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionList$1;-><init>(Lcom/alibaba/dingtalk/share/share/view/ShareActionList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1173
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->b:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1174
    const/16 v2, 0xb

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1175
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->b:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1179
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->c:Landroid/view/View;

    new-instance v2, Lcom/alibaba/dingtalk/share/share/view/ShareActionList$2;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionList$2;-><init>(Lcom/alibaba/dingtalk/share/share/view/ShareActionList;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method
