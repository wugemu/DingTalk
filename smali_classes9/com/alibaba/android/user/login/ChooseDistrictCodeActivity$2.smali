.class final Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;
.super Ljava/lang/Object;
.source "ChooseDistrictCodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 113
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    iget-object v4, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lfxf;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->a(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;Ljava/util/List;)Ljava/util/List;

    .line 114
    iget-object v3, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->b(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;Ljava/util/List;)Ljava/util/List;

    .line 115
    iget-object v3, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->b(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 116
    iget-object v3, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->b(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfra;

    .line 117
    .local v2, "model":Lfra;
    invoke-static {}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->b()Ljava/util/Set;

    move-result-object v4

    .line 1064
    iget-object v5, v2, Lfra;->f:Ljava/lang/String;

    .line 117
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    new-instance v0, Lfra;

    invoke-direct {v0}, Lfra;-><init>()V

    .line 2024
    .local v0, "districtModel":Lfra;
    iget-object v4, v2, Lfra;->a:Ljava/lang/String;

    .line 2028
    iput-object v4, v0, Lfra;->a:Ljava/lang/String;

    .line 2040
    iget-object v4, v2, Lfra;->c:Ljava/lang/String;

    .line 2044
    iput-object v4, v0, Lfra;->c:Ljava/lang/String;

    .line 2048
    iget-object v4, v2, Lfra;->d:Ljava/lang/String;

    .line 2052
    iput-object v4, v0, Lfra;->d:Ljava/lang/String;

    .line 3032
    iget-object v4, v2, Lfra;->b:Ljava/lang/String;

    .line 3036
    iput-object v4, v0, Lfra;->b:Ljava/lang/String;

    .line 123
    const-string/jumbo v4, "\u2606"

    .line 3060
    iput-object v4, v0, Lfra;->e:Ljava/lang/String;

    .line 3072
    iget-object v4, v2, Lfra;->g:Ljava/lang/String;

    .line 3076
    iput-object v4, v0, Lfra;->g:Ljava/lang/String;

    .line 126
    const-string/jumbo v4, "\u4e2d\u56fd"

    .line 4064
    iget-object v5, v2, Lfra;->f:Ljava/lang/String;

    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    iget-object v4, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->c(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v0    # "districtModel":Lfra;
    .end local v2    # "model":Lfra;
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 129
    .restart local v0    # "districtModel":Lfra;
    .restart local v2    # "model":Lfra;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->c(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    .end local v0    # "districtModel":Lfra;
    .end local v2    # "model":Lfra;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->b(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->c(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 134
    iget-object v3, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->c(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 135
    iget-object v3, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->c(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->b(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->c(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->c(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    iget-object v3, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->d(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2$1;-><init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
