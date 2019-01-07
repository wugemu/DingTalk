.class final Lfzu$27;
.super Lgqq;
.source "SpaceNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;Lgrc;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgpe$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgrc;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

.field final synthetic c:Lgpe$b;


# direct methods
.method constructor <init>(Lgrc;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgpe$b;)V
    .locals 0

    .prologue
    .line 2804
    iput-object p1, p0, Lfzu$27;->a:Lgrc;

    iput-object p2, p0, Lfzu$27;->b:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    iput-object p3, p0, Lfzu$27;->c:Lgpe$b;

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method

.method private a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 3
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2867
    if-nez p1, :cond_0

    .line 2883
    :goto_0
    return-void

    .line 2870
    :cond_0
    iget-object v1, p0, Lfzu$27;->a:Lgrc;

    .line 13064
    iget-object v1, v1, Lgrc;->b:Ljava/lang/String;

    .line 2870
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2871
    iget-object v1, p0, Lfzu$27;->a:Lgrc;

    .line 14064
    iget-object v1, v1, Lgrc;->b:Ljava/lang/String;

    .line 2871
    invoke-virtual {p1, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setParentId(Ljava/lang/String;)V

    .line 2873
    :cond_1
    new-instance v0, Lgpa;

    invoke-direct {v0}, Lgpa;-><init>()V

    .line 2874
    .local v0, "param":Lgpa;
    iput-object p1, v0, Lgpa;->a:Ljava/lang/Object;

    .line 2875
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isWifiOnly()Z

    move-result v1

    iput-boolean v1, v0, Lgpa;->c:Z

    .line 2876
    iget-object v1, p0, Lfzu$27;->a:Lgrc;

    .line 14096
    iget-boolean v1, v1, Lgrc;->f:Z

    .line 2876
    iput-boolean v1, v0, Lgpa;->h:Z

    .line 2877
    iget-object v1, p0, Lfzu$27;->a:Lgrc;

    .line 15088
    iget-boolean v1, v1, Lgrc;->e:Z

    .line 2877
    iput-boolean v1, v0, Lgpa;->j:Z

    .line 2878
    const/4 v1, 0x2

    iput v1, v0, Lgpa;->g:I

    .line 2879
    iget-object v1, p0, Lfzu$27;->c:Lgpe$b;

    instance-of v1, v1, Lgpe$a;

    if-eqz v1, :cond_2

    .line 2880
    iget-object v1, p0, Lfzu$27;->c:Lgpe$b;

    check-cast v1, Lgpe$a;

    invoke-interface {v1, p1}, Lgpe$a;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 2882
    :cond_2
    invoke-static {}, Lgpe;->a()Lgpe;

    move-result-object v1

    iget-object v2, p0, Lfzu$27;->c:Lgpe$b;

    invoke-virtual {v1, v0, v2}, Lgpe;->a(Lgpa;Lgpe$b;)V

    goto :goto_0
.end method

.method static synthetic a(Lfzu$27;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p0, "x0"    # Lfzu$27;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 2804
    invoke-direct {p0, p1}, Lfzu$27;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 14
    .param p1, "data"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2807
    iget-object v0, p0, Lfzu$27;->a:Lgrc;

    .line 3104
    iget-boolean v0, v0, Lgrc;->g:Z

    .line 2807
    if-nez v0, :cond_6

    .line 2809
    iget-object v0, p0, Lfzu$27;->a:Lgrc;

    .line 4072
    iget-object v0, v0, Lgrc;->c:Ljava/lang/String;

    .line 2809
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "/"

    .line 2810
    .local v2, "parentPath":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lfzu$27;->b:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    if-eqz v0, :cond_3

    .line 2811
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v6

    iget-object v0, p0, Lfzu$27;->a:Lgrc;

    .line 6056
    iget-object v8, v0, Lgrc;->a:Ljava/lang/String;

    .line 2812
    iget-object v7, p0, Lfzu$27;->b:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    .line 6182
    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->dstPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6183
    :cond_0
    const/4 v13, 0x0

    .line 2817
    .end local v2    # "parentPath":Ljava/lang/String;
    .local v13, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :goto_1
    if-eqz v13, :cond_5

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2818
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0, v0}, Lfzu$27;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 2864
    .end local v13    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :goto_2
    return-void

    .line 2809
    :cond_1
    iget-object v0, p0, Lfzu$27;->a:Lgrc;

    .line 5072
    iget-object v2, v0, Lgrc;->c:Ljava/lang/String;

    goto :goto_0

    .line 6185
    .restart local v2    # "parentPath":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6186
    iget-object v1, v7, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->dstPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6187
    const/4 v1, 0x0

    invoke-virtual {v6, v0, v2, v1}, Lgoj;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v9

    .line 6188
    new-instance v0, Ltj;

    iget-object v1, v7, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->appId:Ljava/lang/String;

    iget-wide v10, v7, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->orgId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "parentPath":Ljava/lang/String;
    iget-object v3, v7, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->priority:Ljava/lang/String;

    iget-object v4, v7, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->srcPath:Ljava/lang/String;

    .line 6189
    invoke-static {v4}, Lgoj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->dstPath:Ljava/lang/String;

    invoke-static {v7}, Lgoj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ltj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6190
    iget-object v1, v6, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v2, v8

    move-object v3, v9

    move-object v6, v0

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->generateEncryptDentryList(Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Ltj;Z)Ljava/util/List;

    move-result-object v13

    goto :goto_1

    .line 2814
    .restart local v2    # "parentPath":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v0

    iget-object v1, p0, Lfzu$27;->a:Lgrc;

    .line 7080
    iget-object v3, v1, Lgrc;->d:Ljava/lang/String;

    .line 2815
    iget-object v1, p0, Lfzu$27;->a:Lgrc;

    .line 8056
    iget-object v1, v1, Lgrc;->a:Ljava/lang/String;

    .line 8211
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8212
    const/4 v13, 0x0

    .line 2814
    .end local v2    # "parentPath":Ljava/lang/String;
    .restart local v13    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :goto_3
    goto :goto_1

    .line 8214
    .end local v13    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .restart local v2    # "parentPath":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8215
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8216
    const/4 v3, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lgoj;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v2

    .line 8217
    .end local v2    # "parentPath":Ljava/lang/String;
    iget-object v0, v0, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->generateDentryList(Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Z)Ljava/util/List;

    move-result-object v13

    goto :goto_3

    .line 2820
    .restart local v13    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_5
    const-string/jumbo v0, "CSpace"

    sget-object v1, Lfzu;->c:Ljava/lang/String;

    const-string/jumbo v3, "uploadFile2Space generate dentry list error"

    invoke-static {v0, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2821
    new-instance v12, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v12}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>()V

    .line 2822
    .local v12, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    const/4 v0, 0x3

    iput v0, v12, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadStatus:I

    .line 2823
    iget-object v0, p0, Lfzu$27;->c:Lgpe$b;

    const-wide/16 v6, 0x0

    invoke-interface {v0, v6, v7, v12}, Lgpe$b;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto/16 :goto_2

    .line 2827
    .end local v12    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v13    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_6
    iget-object v0, p0, Lfzu$27;->b:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    if-eqz v0, :cond_7

    .line 2828
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v0

    iget-object v1, p0, Lfzu$27;->a:Lgrc;

    .line 9056
    iget-object v1, v1, Lgrc;->a:Ljava/lang/String;

    .line 2828
    iget-object v3, p0, Lfzu$27;->b:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    new-instance v4, Lfzu$27$1;

    invoke-direct {v4, p0}, Lfzu$27$1;-><init>(Lfzu$27;)V

    invoke-virtual {v0, v1, v3, v4}, Lgoj;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgoi;)V

    goto/16 :goto_2

    .line 2847
    :cond_7
    new-instance v5, Lfzu$27$2;

    invoke-direct {v5, p0}, Lfzu$27$2;-><init>(Lfzu$27;)V

    .line 2858
    .local v5, "dbListener":Lgoi;
    iget-object v0, p0, Lfzu$27;->a:Lgrc;

    .line 9072
    iget-object v0, v0, Lgrc;->c:Ljava/lang/String;

    .line 2858
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v2, "/"

    .line 2859
    .restart local v2    # "parentPath":Ljava/lang/String;
    :goto_4
    iget-object v0, p0, Lfzu$27;->a:Lgrc;

    .line 10128
    iget-boolean v0, v0, Lgrc;->j:Z

    .line 2859
    if-eqz v0, :cond_9

    .line 2860
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v0

    iget-object v1, p0, Lfzu$27;->a:Lgrc;

    .line 11056
    iget-object v1, v1, Lgrc;->a:Ljava/lang/String;

    .line 2860
    iget-object v3, p0, Lfzu$27;->a:Lgrc;

    .line 11080
    iget-object v3, v3, Lgrc;->d:Ljava/lang/String;

    .line 2860
    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lgoj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgoi;)V

    goto/16 :goto_2

    .line 2858
    .end local v2    # "parentPath":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lfzu$27;->a:Lgrc;

    .line 10072
    iget-object v2, v0, Lgrc;->c:Ljava/lang/String;

    goto :goto_4

    .line 2862
    .restart local v2    # "parentPath":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v0

    iget-object v1, p0, Lfzu$27;->a:Lgrc;

    .line 12056
    iget-object v7, v1, Lgrc;->a:Ljava/lang/String;

    .line 2862
    iget-object v1, p0, Lfzu$27;->a:Lgrc;

    .line 12080
    iget-object v1, v1, Lgrc;->d:Ljava/lang/String;

    .line 12278
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12279
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12280
    iget-object v6, v0, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v2, v1}, Lgoj;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Lgoj$8;

    invoke-direct {v11, v0, v5}, Lgoj$8;-><init>(Lgoj;Lgoi;)V

    invoke-interface/range {v6 .. v11}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->saveOrUpdateFile2DB(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLxv;)V

    goto/16 :goto_2
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2804
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzu$27;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 2892
    iget-object v0, p0, Lfzu$27;->c:Lgpe$b;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3, v4}, Lgpe$b;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 2893
    const-string/jumbo v0, "CSpace"

    sget-object v1, Lfzu;->c:Ljava/lang/String;

    const-string/jumbo v2, "uploadFile2Space"

    .line 2894
    invoke-static {v2, p1, p2, v4}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 2893
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 2888
    return-void
.end method
