.class final Lglo$2;
.super Ljava/lang/Object;
.source "SpaceUploadManager.java"

# interfaces
.implements Lgpe$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lgrj;

.field final synthetic d:Lglo;


# direct methods
.method constructor <init>(Lglo;Lcma;Ljava/lang/String;Lgrj;)V
    .locals 0
    .param p1, "this$0"    # Lglo;

    .prologue
    .line 133
    iput-object p1, p0, Lglo$2;->d:Lglo;

    iput-object p2, p0, Lglo$2;->a:Lcma;

    iput-object p3, p0, Lglo$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lglo$2;->c:Lgrj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJJ)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "totalSize"    # J
    .param p5, "uploadedSize"    # J

    .prologue
    .line 136
    iget-object v1, p0, Lglo$2;->a:Lcma;

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lglo$2;->d:Lglo;

    invoke-static {v1}, Lglo;->a(Lglo;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lglo$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lglo$2;->d:Lglo;

    invoke-static {v1}, Lglo;->a(Lglo;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lglo$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 139
    .local v0, "dentryModelTemp":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v0, p5, p6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadedSize(J)V

    .line 140
    iget-object v1, p0, Lglo$2;->d:Lglo;

    invoke-static {v1}, Lglo;->a(Lglo;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lglo$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .end local v0    # "dentryModelTemp":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_0
    iget-object v1, p0, Lglo$2;->c:Lgrj;

    .line 1105
    iput-wide p5, v1, Lgrj;->c:J

    .line 143
    iget-object v1, p0, Lglo$2;->a:Lcma;

    iget-object v2, p0, Lglo$2;->c:Lgrj;

    invoke-interface {v1, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 145
    :cond_1
    return-void
.end method

.method public final a(JLcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x3

    .line 149
    if-eqz p3, :cond_3

    .line 150
    iget-object v1, p0, Lglo$2;->c:Lgrj;

    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v2

    .line 2105
    iput-wide v2, v1, Lgrj;->c:J

    .line 151
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v1

    if-nez v1, :cond_1

    .line 154
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "cspace_doc_upload_succ"

    .line 155
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lglo$2;->c:Lgrj;

    const/4 v2, 0x2

    .line 3101
    iput v2, v1, Lgrj;->b:I

    .line 158
    invoke-static {p3}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    .line 160
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v1, p0, Lglo$2;->c:Lgrj;

    .line 4097
    iput-object v0, v1, Lgrj;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 161
    iget-object v1, p0, Lglo$2;->a:Lcma;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lglo$2;->a:Lcma;

    iget-object v2, p0, Lglo$2;->c:Lgrj;

    invoke-interface {v1, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 187
    .end local v0    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 165
    iget-object v1, p0, Lglo$2;->c:Lgrj;

    .line 4101
    iput v4, v1, Lgrj;->b:I

    .line 166
    iget-object v1, p0, Lglo$2;->a:Lcma;

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lglo$2;->a:Lcma;

    iget-object v2, p0, Lglo$2;->c:Lgrj;

    invoke-interface {v1, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 169
    :cond_2
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceUploadManager"

    const-string/jumbo v3, "uploadFile2Space"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "split upload error"

    .line 172
    invoke-static {v3, v4, v5, v6}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_3
    iget-object v1, p0, Lglo$2;->c:Lgrj;

    .line 5101
    iput v4, v1, Lgrj;->b:I

    .line 178
    iget-object v1, p0, Lglo$2;->a:Lcma;

    if-eqz v1, :cond_4

    .line 179
    iget-object v1, p0, Lglo$2;->a:Lcma;

    iget-object v2, p0, Lglo$2;->c:Lgrj;

    invoke-interface {v1, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 181
    :cond_4
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceUploadManager"

    const-string/jumbo v3, "uploadFile2Space"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "split upload param error"

    .line 183
    invoke-static {v3, v4, v5, v6}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(JLcom/alibaba/alimei/cspace/model/DentryModel;Lggs;)V
    .locals 6
    .param p1, "id"    # J
    .param p3, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p4, "sdkError"    # Lggs;

    .prologue
    .line 191
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    if-eqz p4, :cond_2

    const-string/jumbo v0, "13026000"

    iget-object v1, p4, Lggs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lglo$2;->a:Lcma;

    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lglo$2;->a:Lcma;

    const-string/jumbo v2, ""

    iget-object v0, p0, Lglo$2;->d:Lglo;

    invoke-static {v0}, Lglo;->b(Lglo;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-interface {v1, v2, v0}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    :goto_1
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "SpaceUploadManager"

    const-string/jumbo v4, "uploadFile2Space"

    if-eqz p4, :cond_3

    iget-object v0, p4, Lggs;->a:Ljava/lang/String;

    move-object v1, v0

    :goto_2
    if-eqz p4, :cond_4

    iget-object v0, p4, Lggs;->b:Ljava/lang/String;

    :goto_3
    const/4 v5, 0x0

    invoke-static {v4, v1, v0, v5}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lglo$2;->d:Lglo;

    invoke-static {v0}, Lglo;->b(Lglo;)Landroid/content/Context;

    move-result-object v0

    sget v3, Lfzs$h;->cspace_capacity_limit:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lglo$2;->a:Lcma;

    if-eqz v0, :cond_0

    .line 197
    invoke-static {p4}, Lggs;->a(Lggs;)Lggs;

    move-result-object p4

    .line 198
    iget-object v0, p0, Lglo$2;->a:Lcma;

    iget-object v1, p4, Lggs;->a:Ljava/lang/String;

    iget-object v2, p4, Lggs;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :cond_3
    const-string/jumbo v0, ""

    move-object v1, v0

    goto :goto_2

    :cond_4
    const-string/jumbo v0, " addDentry error"

    goto :goto_3
.end method
