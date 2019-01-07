.class public final Ljlb;
.super Ljava/lang/Object;
.source "Downloader.java"


# static fields
.field protected static a:Ljlb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljlt;Ljls;)I
    .locals 10
    .param p0, "request"    # Ljlt;
    .param p1, "downloadListener"    # Ljls;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 68
    const-string/jumbo v5, "api"

    const-string/jumbo v8, " invoke download api  {}"

    new-array v9, v7, [Ljava/lang/Object;

    aput-object p0, v9, v6

    invoke-static {v5, v8, v9}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    if-eqz p0, :cond_0

    iget-object v5, p0, Ljlt;->b:Ljlv;

    iget-object v5, v5, Ljlv;->g:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Ljla;->d:Ljld;

    if-eqz v5, :cond_0

    .line 71
    iget-object v5, p0, Ljlt;->b:Ljlv;

    sget-object v8, Ljla;->d:Ljld;

    invoke-interface {v8}, Ljld;->a()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Ljlv;->g:Ljava/lang/String;

    .line 74
    :cond_0
    if-eqz p0, :cond_2

    .line 1047
    iget-object v5, p0, Ljlt;->b:Ljlv;

    if-eqz v5, :cond_1

    iget-object v5, p0, Ljlt;->a:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Ljlt;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1048
    :cond_1
    const-string/jumbo v5, "downloader"

    const-string/jumbo v7, "param is not complete"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Ljmb;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v6

    .line 74
    :goto_0
    if-nez v5, :cond_9

    .line 79
    :cond_2
    const/16 v5, -0x64

    .line 104
    :goto_1
    return v5

    .line 1052
    :cond_3
    iget-object v5, p0, Ljlt;->b:Ljlv;

    iget-object v5, v5, Ljlv;->g:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1053
    const-string/jumbo v5, "downloader"

    const-string/jumbo v7, "lack of store path"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Ljmb;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v6

    .line 1054
    goto :goto_0

    .line 1057
    :cond_4
    iget-object v5, p0, Ljlt;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljlu;

    .line 1058
    iget-object v5, v5, Ljlu;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1059
    const-string/jumbo v5, "downloader"

    const-string/jumbo v7, "lack of download url"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Ljmb;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v6

    .line 1060
    goto :goto_0

    .line 1064
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    iget-object v5, p0, Ljlt;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljlu;

    .line 1066
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1067
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1070
    :cond_8
    iput-object v6, p0, Ljlt;->a:Ljava/util/List;

    move v5, v7

    .line 1071
    goto :goto_0

    .line 86
    :cond_9
    new-instance v4, Ljly;

    invoke-direct {v4}, Ljly;-><init>()V

    .line 87
    .local v4, "taskParam":Ljly;
    invoke-static {}, Ljma;->a()I

    move-result v5

    iput v5, v4, Ljly;->a:I

    .line 89
    iget-object v5, p0, Ljlt;->b:Ljlv;

    iput-object v5, v4, Ljly;->b:Ljlv;

    .line 90
    iget-object v5, p0, Ljlt;->a:Ljava/util/List;

    iput-object v5, v4, Ljly;->d:Ljava/util/List;

    .line 91
    new-instance v5, Ljmg;

    invoke-direct {v5, p0, p1}, Ljmg;-><init>(Ljlt;Ljls;)V

    iput-object v5, v4, Ljly;->c:Ljlx;

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v3, "taskList":Ljava/util/List;, "Ljava/util/List<Ljlw;>;"
    iget-object v5, p0, Ljlt;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljlu;

    .line 95
    .local v0, "downloadItem":Ljlu;
    new-instance v2, Ljlw;

    invoke-direct {v2}, Ljlw;-><init>()V

    .line 96
    .local v2, "task":Ljlw;
    iput-object v0, v2, Ljlw;->e:Ljlu;

    .line 97
    iget-object v5, p0, Ljlt;->b:Ljlv;

    iput-object v5, v2, Ljlw;->f:Ljlv;

    .line 98
    iget-object v5, p0, Ljlt;->b:Ljlv;

    iget-object v5, v5, Ljlv;->g:Ljava/lang/String;

    iput-object v5, v2, Ljlw;->g:Ljava/lang/String;

    .line 99
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 102
    .end local v0    # "downloadItem":Ljlu;
    .end local v2    # "task":Ljlw;
    :cond_a
    sget-object v5, Ljla;->e:Ljle;

    invoke-interface {v5, v3, v4}, Ljle;->a(Ljava/util/List;Ljly;)V

    .line 104
    iget v5, v4, Ljly;->a:I

    goto/16 :goto_1
.end method

.method public static a()Ljlb;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Ljlb;->a:Ljlb;

    if-nez v0, :cond_2

    .line 37
    new-instance v0, Ljlb;

    invoke-direct {v0}, Ljlb;-><init>()V

    sput-object v0, Ljlb;->a:Ljlb;

    .line 39
    sget-object v0, Ljla;->f:Ljlc;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljlf;

    invoke-direct {v0}, Ljlf;-><init>()V

    sput-object v0, Ljla;->f:Ljlc;

    .line 43
    :cond_0
    sget-object v0, Ljla;->e:Ljle;

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Ljlh;

    invoke-direct {v0}, Ljlh;-><init>()V

    sput-object v0, Ljla;->e:Ljle;

    .line 47
    :cond_1
    sget-object v0, Ljla;->d:Ljld;

    if-nez v0, :cond_2

    .line 48
    new-instance v0, Ljlg;

    invoke-direct {v0}, Ljlg;-><init>()V

    sput-object v0, Ljla;->d:Ljld;

    .line 52
    :cond_2
    sget-object v0, Ljlb;->a:Ljlb;

    return-object v0
.end method
