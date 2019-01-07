.class final Lgef$1;
.super Ljava/lang/Object;
.source "DentryListViewUploadUseCase.java"

# interfaces
.implements Lgpe$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgef;->a()Lgpe$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgef;


# direct methods
.method constructor <init>(Lgef;)V
    .locals 0
    .param p1, "this$0"    # Lgef;

    .prologue
    .line 102
    iput-object p1, p0, Lgef$1;->a:Lgef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJJ)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "totalSize"    # J
    .param p5, "uploadedSize"    # J

    .prologue
    .line 105
    invoke-static {p1, p2}, Lgee;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "dentryKey":Ljava/lang/String;
    iget-object v5, p0, Lgef$1;->a:Lgef;

    .line 1035
    iget-object v5, v5, Lgef;->a:Lgee;

    .line 106
    invoke-virtual {v5, v2}, Lgee;->a(Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v0

    .line 107
    .local v0, "csDentry":Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 112
    .local v1, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v1, p5, p6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadedSize(J)V

    .line 113
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 115
    iget-object v5, p0, Lgef$1;->a:Lgef;

    .line 2035
    iget-object v5, v5, Lgef;->a:Lgee;

    .line 115
    invoke-virtual {v5}, Lgee;->c()Ljava/util/List;

    move-result-object v3

    .line 116
    .local v3, "dentryList":Ljava/util/List;, "Ljava/util/List<Lgeh;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 119
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgeh;

    .line 120
    .local v4, "viewModel":Lgeh;
    if-eqz v4, :cond_2

    .line 2042
    iget-object v6, v4, Lgeh;->d:Ljava/lang/String;

    .line 120
    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    iget-object v5, p0, Lgef$1;->a:Lgef;

    .line 3035
    iget-object v5, v5, Lgef;->a:Lgee;

    .line 3956
    iget-object v5, v5, Lgee;->b:Lged$b;

    .line 121
    invoke-interface {v5, v4}, Lged$b;->a(Lgeh;)V

    goto :goto_0
.end method

.method public final a(JLcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 129
    if-nez p3, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-static {p1, p2}, Lgee;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "dentryKey":Ljava/lang/String;
    iget-object v5, p0, Lgef$1;->a:Lgef;

    .line 4035
    iget-object v5, v5, Lgef;->a:Lgee;

    .line 134
    invoke-virtual {v5, v1}, Lgee;->a(Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v0

    .line 135
    .local v0, "csDentry":Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    invoke-virtual {v0, p3}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 140
    const/4 v3, 0x0

    .line 141
    .local v3, "dentryViewModel":Lgeh;
    iget-object v5, p0, Lgef$1;->a:Lgef;

    .line 5035
    iget-object v5, v5, Lgef;->a:Lgee;

    .line 141
    invoke-virtual {v5}, Lgee;->c()Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, "dentryList":Ljava/util/List;, "Ljava/util/List<Lgeh;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 143
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgeh;

    .line 144
    .local v4, "viewModel":Lgeh;
    if-eqz v4, :cond_2

    .line 5042
    iget-object v6, v4, Lgeh;->d:Ljava/lang/String;

    .line 144
    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 145
    move-object v3, v4

    .line 151
    .end local v4    # "viewModel":Lgeh;
    :cond_3
    if-eqz v3, :cond_0

    .line 152
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v5

    if-nez v5, :cond_4

    .line 153
    const/4 v5, 0x1

    .line 6022
    iput v5, v3, Lgeh;->a:I

    .line 155
    :cond_4
    iget-object v5, p0, Lgef$1;->a:Lgef;

    .line 6035
    iget-object v5, v5, Lgef;->a:Lgee;

    .line 6956
    iget-object v5, v5, Lgee;->b:Lged$b;

    .line 155
    invoke-interface {v5, v3}, Lged$b;->a(Lgeh;)V

    goto :goto_0
.end method

.method public final a(JLcom/alibaba/alimei/cspace/model/DentryModel;Lggs;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p4, "sdkError"    # Lggs;

    .prologue
    .line 161
    if-nez p3, :cond_0

    .line 177
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_1

    .line 165
    const-string/jumbo v0, "13026000"

    iget-object v1, p4, Lggs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    sget v0, Lfzs$h;->cspace_capacity_limit:I

    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 176
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lgef$1;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0

    .line 167
    :cond_2
    const-string/jumbo v0, "13023000"

    iget-object v1, p4, Lggs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    sget v0, Lfzs$h;->cspace_file_not_exist:I

    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :cond_3
    const-string/jumbo v0, "13027001"

    iget-object v1, p4, Lggs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    sget v0, Lfzs$h;->dt_cspace_upload_mobilenetwork:I

    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    goto :goto_1

    .line 172
    :cond_4
    const-string/jumbo v0, "13900211"

    iget-object v1, p4, Lggs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p4, Lggs;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadErrorMsg(Ljava/lang/String;)V

    goto :goto_1
.end method
