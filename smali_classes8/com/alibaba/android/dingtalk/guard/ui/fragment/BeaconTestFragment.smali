.class public Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "BeaconTestFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;,
        Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$c;,
        Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lbti;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->e:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->f:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->i:Z

    .line 122
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$6;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->j:Lbti;

    .line 224
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;Lorg/altbeacon/beacon/Beacon;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;
    .param p1, "x1"    # Lorg/altbeacon/beacon/Beacon;

    .prologue
    .line 35
    .line 2181
    invoke-static {}, Lorg/altbeacon/beacon/distance/AndroidModel;->forThisDevice()Lorg/altbeacon/beacon/distance/AndroidModel;

    move-result-object v0

    .line 2182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2183
    const-string/jumbo v2, "version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/altbeacon/beacon/distance/AndroidModel;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2184
    const-string/jumbo v2, "buildNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/altbeacon/beacon/distance/AndroidModel;->getBuildNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2185
    const-string/jumbo v2, "manufacturer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/altbeacon/beacon/distance/AndroidModel;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2186
    const-string/jumbo v2, "model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/altbeacon/beacon/distance/AndroidModel;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2188
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->i:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2190
    :try_start_0
    const-class v0, Lorg/altbeacon/beacon/Beacon;

    const-string/jumbo v2, "mRunningAverageRssi"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2191
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 2193
    if-eqz v0, :cond_0

    .line 2194
    const-string/jumbo v2, "average="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2201
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    return-void

    .line 2196
    :catch_0
    move-exception v0

    .line 2197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->g:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->i:Z

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->I:Landroid/view/View;

    sget v1, Lbrx$d;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->a:Landroid/widget/ListView;

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->I:Landroid/view/View;

    sget v1, Lbrx$d;->log_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->b:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->I:Landroid/view/View;

    sget v1, Lbrx$d;->log_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->c:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->I:Landroid/view/View;

    sget v1, Lbrx$d;->close_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 83
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;B)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->g:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->g:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->I:Landroid/view/View;

    sget v1, Lbrx$d;->message_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->d:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->I:Landroid/view/View;

    sget v1, Lbrx$d;->record_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$4;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->I:Landroid/view/View;

    sget v1, Lbrx$d;->copy_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$5;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1054
    sget-object v0, Lbry$c;->a:Lbry;

    .line 118
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->j:Lbti;

    invoke-virtual {v0, v1}, Lbry;->a(Lbti;)V

    .line 119
    const/4 v0, 0x1

    invoke-static {v0}, Lbtk;->a(Z)V

    .line 120
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 206
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 2054
    sget-object v0, Lbry$c;->a:Lbry;

    .line 207
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->j:Lbti;

    invoke-virtual {v0, v1}, Lbry;->b(Lbti;)V

    .line 208
    const/4 v0, 0x0

    invoke-static {v0}, Lbtk;->a(Z)V

    .line 209
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lbrx$e;->device_beacon_test_fragment:I

    return v0
.end method
