.class final Lfus$1;
.super Ljava/lang/Object;
.source "CommonVerifyTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfus;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfus;


# direct methods
.method constructor <init>(Lfus;)V
    .locals 0
    .param p1, "this$0"    # Lfus;

    .prologue
    .line 70
    iput-object p1, p0, Lfus$1;->a:Lfus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 73
    iget-object v5, p0, Lfus$1;->a:Lfus;

    .line 1097
    iget-object v0, v5, Lfus;->b:Ljava/lang/String;

    invoke-static {v0}, Lfuu;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1098
    const-string/jumbo v0, "outverify"

    const-string/jumbo v2, "[CommonVerifyTask] file not exist:"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const-string/jumbo v0, "local file no exist"

    invoke-virtual {v5, v1, v0}, Lfus;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :goto_0
    return-void

    .line 1105
    :cond_0
    invoke-virtual {v5}, Lfus;->b()Ljava/lang/String;

    move-result-object v2

    .line 1106
    invoke-static {v2}, Lfuu;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1107
    iget-object v0, v5, Lfus;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v5, Lfus;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1108
    iget-object v0, v5, Lfus;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1185
    :cond_1
    iget-object v0, v5, Lfus;->f:[B

    if-eqz v0, :cond_2

    iget-object v0, v5, Lfus;->f:[B

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, v5, Lfus;->g:[B

    if-eqz v0, :cond_2

    iget-object v0, v5, Lfus;->g:[B

    array-length v0, v0

    if-gtz v0, :cond_5

    :cond_2
    move-object v0, v2

    .line 1111
    :cond_3
    :goto_1
    invoke-static {v0}, Lfuu;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1112
    iget-object v6, v5, Lfus;->e:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1113
    iget-object v2, v5, Lfus;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2128
    :cond_4
    new-instance v2, Lcom/alibaba/wukong/upload/UploadParams;

    invoke-direct {v2}, Lcom/alibaba/wukong/upload/UploadParams;-><init>()V

    .line 3058
    iput-object v0, v2, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 2131
    iget v0, v5, Lfus;->c:I

    if-lez v0, :cond_9

    .line 2133
    sget-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->TEMP_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    invoke-virtual {v2, v0}, Lcom/alibaba/wukong/upload/UploadParams;->a(Lcom/alibaba/wukong/upload/UploadParams$AuthType;)V

    .line 2134
    iget v0, v5, Lfus;->c:I

    .line 3108
    iput v0, v2, Lcom/alibaba/wukong/upload/UploadParams;->g:I

    .line 4090
    iput-boolean v3, v2, Lcom/alibaba/wukong/upload/UploadParams;->e:Z

    move v0, v3

    .line 2137
    :goto_2
    invoke-static {}, Lify;->a()Lify;

    move-result-object v3

    new-instance v6, Lfus$a;

    invoke-direct {v6, v5, v0, v4}, Lfus$a;-><init>(Lfus;ZB)V

    .line 4128
    invoke-virtual {v3, v2, v6, v1}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;Lifv;Lifu;)V

    goto :goto_0

    .line 1188
    :cond_5
    invoke-static {v2}, Lfuu;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1191
    const-string/jumbo v0, ""

    .line 1192
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "encrypted-"

    aput-object v7, v6, v4

    invoke-static {v2}, Lcom/autonavi/amap/mapcore/Md5Utility;->getStringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lfuu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1193
    iget-object v6, v5, Lfus;->f:[B

    iget-object v7, v5, Lfus;->g:[B

    invoke-static {v2, v0, v6, v7}, Lfun;->a(Ljava/lang/String;Ljava/lang/String;[B[B)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_6
    move-object v0, v1

    .line 1196
    goto :goto_1

    .line 1117
    :cond_7
    const-string/jumbo v0, "outverify"

    const-string/jumbo v2, "[CommonVerifyTask] encrypt file error"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const-string/jumbo v0, "file encrypt error"

    invoke-virtual {v5, v1, v0}, Lfus;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1121
    :cond_8
    const-string/jumbo v0, "outverify"

    const-string/jumbo v2, "[CommonVerifyTask] add water error"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string/jumbo v0, "add water error"

    invoke-virtual {v5, v1, v0}, Lfus;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move v0, v4

    goto :goto_2
.end method
