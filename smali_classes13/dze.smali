.class public final Ldze;
.super Ljava/lang/Object;
.source "SessionHeaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldze$a;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/widget/ListView;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldzl;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/alibaba/android/dingtalkim/session/header/Header;",
            "Ldzl;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ldze$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldze;->e:Ljava/util/HashSet;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldze;->f:Z

    .line 40
    return-void
.end method

.method private a()I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 254
    :try_start_0
    iget-object v2, p0, Ldze;->b:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 259
    :goto_0
    return v1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getHeaderViewsCount failed, error="

    aput-object v5, v4, v1

    const/4 v5, 0x1

    .line 257
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 256
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Ldze;->b:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "addHeaderView failed, error="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 267
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 266
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    :try_start_0
    iget-object v1, p0, Ldze;->b:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "removeHeaderView failed, error="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 276
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 275
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d(Lcom/alibaba/android/dingtalkim/session/header/Header;)V
    .locals 3
    .param p1, "header"    # Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 281
    iget-object v1, p0, Ldze;->e:Ljava/util/HashSet;

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Ldze;->e:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldze$a;

    .line 283
    .local v0, "listener":Ldze$a;
    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v0}, Ldze$a;->h()V

    goto :goto_0

    .line 288
    .end local v0    # "listener":Ldze$a;
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(I)Ldzl;
    .locals 5
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, "holder":Ldzl;
    iget-object v3, p0, Ldze;->b:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 238
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 240
    iget-object v3, p0, Ldze;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 241
    iget-object v3, p0, Ldze;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Ldzl;
    check-cast v1, Ldzl;

    .line 249
    .restart local v1    # "holder":Ldzl;
    :cond_0
    :goto_0
    return-object v1

    .line 244
    :cond_1
    invoke-interface {v0, p1, v4, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 245
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ldzl;

    if-eqz v3, :cond_0

    .line 246
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Ldzl;
    check-cast v1, Ldzl;

    .restart local v1    # "holder":Ldzl;
    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/session/header/Header;)Ldzl;
    .locals 5
    .param p1, "header"    # Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 87
    if-eqz p1, :cond_0

    iget-object v4, p0, Ldze;->b:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ldze;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move-object v1, v3

    .line 99
    :cond_1
    :goto_0
    return-object v1

    .line 91
    :cond_2
    invoke-direct {p0}, Ldze;->a()I

    move-result v0

    .line 92
    .local v0, "headerViewsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 93
    invoke-virtual {p0, v2}, Ldze;->a(I)Ldzl;

    move-result-object v1

    .line 94
    .local v1, "holder":Ldzl;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ldzl;->d()Lcom/alibaba/android/dingtalkim/session/header/Header;

    move-result-object v4

    if-eq v4, p1, :cond_1

    .line 92
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "holder":Ldzl;
    :cond_4
    move-object v1, v3

    .line 99
    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/session/header/Header;Ljava/lang/Object;)V
    .locals 10
    .param p1, "header"    # Lcom/alibaba/android/dingtalkim/session/header/Header;
    .param p2, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 120
    if-eqz p1, :cond_0

    iget-object v1, p0, Ldze;->b:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldze;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ldze;->f:Z

    if-nez v1, :cond_1

    .line 2141
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v1, p0, Ldze;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldzl;

    .line 125
    .local v0, "holder":Ldzl;
    if-nez v0, :cond_8

    .line 126
    iget-object v1, p0, Ldze;->a:Landroid/app/Activity;

    iget-object v2, p0, Ldze;->b:Landroid/widget/ListView;

    .line 2039
    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    if-nez p0, :cond_6

    :cond_2
    move-object v0, v3

    .line 127
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 128
    iget-object v1, p0, Ldze;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_4
    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ldzl;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2140
    if-eqz v0, :cond_0

    .line 3047
    iget-object v1, v0, Ldzl;->a:Landroid/view/View;

    .line 2140
    if-eqz v1, :cond_0

    .line 4047
    iget-object v5, v0, Ldzl;->a:Landroid/view/View;

    .line 2145
    invoke-direct {p0}, Ldze;->a()I

    move-result v1

    .line 2146
    if-gtz v1, :cond_9

    .line 2148
    invoke-direct {p0, v5}, Ldze;->a(Landroid/view/View;)V

    .line 2149
    iget-object v1, p0, Ldze;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2177
    :cond_5
    :goto_3
    invoke-direct {p0, p1}, Ldze;->d(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    goto :goto_0

    .line 2044
    :cond_6
    sget-object v5, Ldzd$1;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/session/header/Header;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    move-object v0, v3

    .line 2112
    .end local v0    # "holder":Ldzl;
    :goto_4
    if-eqz v0, :cond_3

    .line 2113
    invoke-virtual {v0, v1, v2, p0}, Ldzl;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Ldze;)Landroid/view/View;

    .line 2114
    invoke-virtual {v0, p2}, Ldzl;->b(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    move-object v0, v3

    .line 2116
    goto :goto_1

    .line 2046
    .restart local v0    # "holder":Ldzl;
    :pswitch_0
    new-instance v0, Ldzu;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Ldzu;-><init>()V

    goto :goto_4

    .line 2049
    .restart local v0    # "holder":Ldzl;
    :pswitch_1
    new-instance v0, Ldzo;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Ldzo;-><init>()V

    goto :goto_4

    .line 2052
    .restart local v0    # "holder":Ldzl;
    :pswitch_2
    new-instance v0, Leaa;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Leaa;-><init>()V

    goto :goto_4

    .line 2055
    .restart local v0    # "holder":Ldzl;
    :pswitch_3
    new-instance v0, Leab;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Leab;-><init>()V

    goto :goto_4

    .line 2058
    .restart local v0    # "holder":Ldzl;
    :pswitch_4
    new-instance v0, Ldzt;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Ldzt;-><init>()V

    goto :goto_4

    .line 2061
    .restart local v0    # "holder":Ldzl;
    :pswitch_5
    new-instance v0, Ldzs;

    .end local v0    # "holder":Ldzl;
    sget-object v5, Lcom/alibaba/android/dingtalkim/session/header/Header;->DEVICE_STATUS:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-direct {v0, v5}, Ldzs;-><init>(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    goto :goto_4

    .line 2064
    .restart local v0    # "holder":Ldzl;
    :pswitch_6
    new-instance v0, Ldzs;

    .end local v0    # "holder":Ldzl;
    sget-object v5, Lcom/alibaba/android/dingtalkim/session/header/Header;->IPAD_STATUS:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-direct {v0, v5}, Ldzs;-><init>(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    goto :goto_4

    .line 2067
    .restart local v0    # "holder":Ldzl;
    :pswitch_7
    new-instance v0, Ldzp;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Ldzp;-><init>()V

    goto :goto_4

    .line 2070
    .restart local v0    # "holder":Ldzl;
    :pswitch_8
    new-instance v0, Ldzy;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Ldzy;-><init>()V

    goto :goto_4

    .line 2073
    .restart local v0    # "holder":Ldzl;
    :pswitch_9
    new-instance v0, Ldzv;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Ldzv;-><init>()V

    goto :goto_4

    .line 2076
    .restart local v0    # "holder":Ldzl;
    :pswitch_a
    new-instance v0, Ldzm;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Ldzm;-><init>()V

    goto :goto_4

    .line 2079
    .restart local v0    # "holder":Ldzl;
    :pswitch_b
    new-instance v0, Leaf;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Leaf;-><init>()V

    goto :goto_4

    .line 2082
    .restart local v0    # "holder":Ldzl;
    :pswitch_c
    new-instance v0, Ldzw;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Ldzw;-><init>()V

    goto :goto_4

    .line 2085
    .restart local v0    # "holder":Ldzl;
    :pswitch_d
    new-instance v0, Ldzr;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Ldzr;-><init>()V

    goto :goto_4

    .line 2088
    .restart local v0    # "holder":Ldzl;
    :pswitch_e
    new-instance v0, Leag;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Leag;-><init>()V

    goto/16 :goto_4

    .line 2091
    .restart local v0    # "holder":Ldzl;
    :pswitch_f
    new-instance v0, Ldzx;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Ldzx;-><init>()V

    goto/16 :goto_4

    .line 2094
    .restart local v0    # "holder":Ldzl;
    :pswitch_10
    new-instance v0, Ldzz;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Ldzz;-><init>()V

    goto/16 :goto_4

    .line 2097
    .restart local v0    # "holder":Ldzl;
    :pswitch_11
    new-instance v0, Ldzq;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Ldzq;-><init>()V

    goto/16 :goto_4

    .line 2100
    .restart local v0    # "holder":Ldzl;
    :pswitch_12
    new-instance v0, Lead;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Lead;-><init>()V

    goto/16 :goto_4

    .line 2103
    .restart local v0    # "holder":Ldzl;
    :pswitch_13
    new-instance v0, Leae;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Leae;-><init>()V

    goto/16 :goto_4

    .line 2106
    .restart local v0    # "holder":Ldzl;
    :pswitch_14
    new-instance v0, Ldzn;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Ldzn;-><init>()V

    goto/16 :goto_4

    .line 2109
    .restart local v0    # "holder":Ldzl;
    :pswitch_15
    new-instance v0, Leah;

    .end local v0    # "holder":Ldzl;
    invoke-direct {v0}, Leah;-><init>()V

    goto/16 :goto_4

    .line 2118
    :cond_7
    invoke-virtual {v0, p2}, Ldzl;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 131
    .restart local v0    # "holder":Ldzl;
    :cond_8
    invoke-virtual {v0, p2}, Ldzl;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 4184
    :cond_9
    invoke-direct {p0}, Ldze;->a()I

    move-result v2

    move v1, v4

    .line 4187
    :goto_5
    if-ge v1, v2, :cond_a

    .line 4188
    invoke-virtual {p0, v1}, Ldze;->a(I)Ldzl;

    move-result-object v6

    .line 4189
    if-nez v6, :cond_c

    move v2, v1

    .line 4209
    :cond_a
    :goto_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4210
    invoke-direct {p0}, Ldze;->a()I

    move-result v7

    .line 4211
    iget-object v1, p0, Ldze;->b:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    .line 4212
    if-nez v8, :cond_e

    move v3, v2

    .line 4214
    :goto_7
    iget-object v1, p0, Ldze;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_10

    .line 4215
    iget-object v1, p0, Ldze;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldzl;

    .line 4216
    if-eqz v1, :cond_b

    .line 5047
    iget-object v7, v1, Ldzl;->a:Landroid/view/View;

    .line 4216
    if-eqz v7, :cond_b

    .line 6047
    iget-object v1, v1, Ldzl;->a:Landroid/view/View;

    .line 4217
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4214
    :cond_b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_7

    .line 4193
    :cond_c
    invoke-virtual {v6}, Ldzl;->d()Lcom/alibaba/android/dingtalkim/session/header/Header;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/session/header/Header;->ordinal()I

    move-result v6

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/session/header/Header;->ordinal()I

    move-result v7

    if-lt v6, v7, :cond_d

    move v2, v1

    .line 4197
    goto :goto_6

    .line 4187
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_e
    move v1, v2

    .line 4221
    :goto_8
    if-ge v1, v7, :cond_10

    .line 4222
    invoke-interface {v8, v1, v3, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 4223
    if-eqz v9, :cond_f

    .line 4224
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4221
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4229
    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 4230
    invoke-direct {p0, v1}, Ldze;->b(Landroid/view/View;)V

    goto :goto_9

    .line 2155
    :cond_11
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 2156
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2157
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ldzl;

    if-eqz v3, :cond_12

    .line 2158
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldzl;

    .line 2159
    invoke-virtual {v1}, Ldzl;->d()Lcom/alibaba/android/dingtalkim/session/header/Header;

    move-result-object v1

    if-ne v1, p1, :cond_12

    .line 2160
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2166
    :cond_12
    invoke-direct {p0, v5}, Ldze;->a(Landroid/view/View;)V

    .line 2169
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2170
    invoke-direct {p0, v1}, Ldze;->a(Landroid/view/View;)V

    goto :goto_a

    .line 2173
    :cond_13
    iget-object v1, p0, Ldze;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v2, v1, :cond_5

    .line 2174
    iget-object v1, p0, Ldze;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 2044
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public final b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V
    .locals 3
    .param p1, "header"    # Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;)Ldzl;

    move-result-object v0

    .line 104
    .local v0, "holder":Ldzl;
    if-eqz v0, :cond_0

    .line 1047
    iget-object v1, v0, Ldzl;->a:Landroid/view/View;

    .line 105
    invoke-direct {p0, v1}, Ldze;->b(Landroid/view/View;)V

    .line 1291
    :cond_0
    iget-object v1, p0, Ldze;->e:Ljava/util/HashSet;

    if-eqz v1, :cond_2

    .line 1292
    iget-object v1, p0, Ldze;->e:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldze$a;

    .line 1293
    if-eqz v1, :cond_1

    .line 1294
    invoke-interface {v1}, Ldze$a;->i()V

    goto :goto_0

    .line 109
    :cond_2
    return-void
.end method

.method public final c(Lcom/alibaba/android/dingtalkim/session/header/Header;)V
    .locals 1
    .param p1, "header"    # Lcom/alibaba/android/dingtalkim/session/header/Header;

    .prologue
    .line 112
    invoke-static {}, Ldbu;->a()Ldbu;

    invoke-static {}, Ldbu;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;Ljava/lang/Object;)V

    .line 113
    return-void
.end method
