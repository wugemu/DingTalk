.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;
.super Ljava/lang/Object;
.source "CompressImagePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/fastjson/JSONArray;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

.field final synthetic c:I

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Liny;

.field final synthetic f:Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;ILjava/util/List;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->f:Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->a:Lcom/alibaba/fastjson/JSONArray;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    iput p4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->c:I

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->e:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 93
    const/4 v3, 0x0

    .line 95
    .local v3, "model":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->a:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 96
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->a:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "localId":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 98
    const-string/jumbo v6, "CompressImagePlugin"

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "file localid not found  :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->a:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lhmv;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v4

    .line 102
    .local v4, "modelTmp":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    if-nez v4, :cond_2

    const/4 v5, 0x0

    .line 103
    .local v5, "path":Ljava/lang/String;
    :goto_2
    if-eqz v5, :cond_0

    .line 104
    invoke-static {}, Lhah;->a()Lhah;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3e800000    # 0.25f

    iget v9, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->c:I

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-virtual {v6, v5, v7, v8}, Lhah;->a(Ljava/lang/String;FF)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "compressPath":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    sget-object v7, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;->IMAGE:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;

    invoke-virtual {v6, v0, v7}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 110
    :goto_3
    if-eqz v3, :cond_0

    .line 111
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->d:Ljava/util/List;

    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    .end local v0    # "compressPath":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    :cond_2
    iget-object v5, v4, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    goto :goto_2

    .line 108
    .restart local v0    # "compressPath":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    :catch_0
    move-exception v6

    const-string/jumbo v6, "CompressImagePlugin"

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "file not found addRes error"

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lhmv;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 117
    .end local v0    # "compressPath":Ljava/lang/String;
    .end local v2    # "localId":Ljava/lang/String;
    .end local v4    # "modelTmp":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    .end local v5    # "path":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v7, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1$1;

    invoke-direct {v7, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;)V

    invoke-virtual {v6, v7}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method
