.class public Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleConfAlarmActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/ListView;

.field private d:Leun;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/ConfRecordItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;)Leun;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->d:Leun;

    return-object v0
.end method

.method private a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 165
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->e:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v5, "recordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;>;"
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 171
    .local v4, "recordItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    if-eqz v4, :cond_2

    iget-boolean v7, v4, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isValid:Z

    if-eqz v7, :cond_2

    .line 173
    iget-object v7, v4, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 174
    iget-object v7, v4, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 175
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    if-nez v2, :cond_3

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    :cond_3
    :goto_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v7, v4, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 179
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    goto :goto_2

    .line 185
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    .end local v4    # "recordItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    :cond_5
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 186
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v3, "mAlarmShowRecords":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 189
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;>;"
    if-eqz v1, :cond_6

    .line 192
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 193
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    if-eqz v2, :cond_6

    .line 194
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 195
    .local v0, "destItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    iput v7, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    .line 196
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 200
    .end local v0    # "destItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 201
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 202
    new-instance v6, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$3;

    invoke-direct {v6, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;)V

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 210
    :cond_8
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->d:Leun;

    if-eqz v6, :cond_0

    .line 211
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->d:Leun;

    invoke-virtual {v6, v3}, Leun;->a(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "beAdded"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "newRecord":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    if-eqz p1, :cond_0

    .line 114
    const-string/jumbo v1, "conf_records_item_list"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "newRecord":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    check-cast v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 116
    .restart local v0    # "newRecord":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    :cond_0
    if-eqz v0, :cond_3

    .line 117
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->e:Ljava/util/List;

    if-nez v1, :cond_1

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->e:Ljava/util/List;

    .line 120
    :cond_1
    if-nez p2, :cond_2

    .line 121
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 125
    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x400

    const/4 v7, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "onCreate"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x680000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 74
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 75
    .local v1, "wallPaper":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1    # "wallPaper":Landroid/graphics/drawable/Drawable;
    :goto_0
    sget v2, Leuj$j;->activity_teleconf_call_alarm:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2, v7}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->a(Landroid/content/Intent;Z)V

    .line 1128
    sget v2, Leuj$i;->call_alarm_close:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->b:Landroid/view/View;

    .line 1129
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1130
    sget v2, Leuj$i;->call_alarm_records:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->c:Landroid/widget/ListView;

    .line 1131
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->c:Landroid/widget/ListView;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1160
    new-instance v2, Leun;

    invoke-direct {v2, p0}, Leun;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->d:Leun;

    .line 1161
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->c:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->d:Leun;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->a()V

    .line 84
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Set wall paper exp "

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 107
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 108
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "on destroy"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 89
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "onNewIntent"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->a(Landroid/content/Intent;Z)V

    .line 91
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->a()V

    .line 92
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 97
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 102
    invoke-static {p0}, Lewp;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 103
    return-void
.end method
