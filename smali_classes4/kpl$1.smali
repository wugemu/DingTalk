.class final Lkpl$1;
.super Ljava/lang/Object;
.source "AgooFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkpl;->a([BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lkpl;


# direct methods
.method constructor <init>(Lkpl;[BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lkpl$1;->c:Lkpl;

    iput-object p2, p0, Lkpl$1;->a:[B

    iput-object p3, p0, Lkpl$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 86
    :try_start_0
    new-instance v5, Ljava/lang/String;

    iget-object v8, p0, Lkpl$1;->a:[B

    const-string/jumbo v9, "utf-8"

    invoke-direct {v5, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 87
    .local v5, "message":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 88
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 90
    .local v4, "len":I
    const/4 v6, 0x0

    .line 91
    .local v6, "msgId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 92
    .local v7, "pack":Ljava/lang/String;
    const/4 v8, 0x1

    if-ne v4, v8, :cond_3

    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 94
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 95
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 98
    const-string/jumbo v8, "i"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 99
    const-string/jumbo v8, "p"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 93
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_1
    sget-object v8, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v8}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 102
    const-string/jumbo v8, "AgooFactory"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "saveMsg msgId:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",message="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",currentPack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",reportTimes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lkpl;->a()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lkph;->a(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Lkpl;->a()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 106
    iget-object v8, p0, Lkpl$1;->b:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 107
    iget-object v8, p0, Lkpl$1;->c:Lkpl;

    invoke-static {v8}, Lkpl;->a(Lkpl;)Lorg/android/agoo/message/MessageService;

    move-result-object v8

    const-string/jumbo v9, "0"

    invoke-virtual {v8, v6, v5, v9}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "len":I
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "msgId":Ljava/lang/String;
    .end local v7    # "pack":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 109
    .restart local v1    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v4    # "len":I
    .restart local v5    # "message":Ljava/lang/String;
    .restart local v6    # "msgId":Ljava/lang/String;
    .restart local v7    # "pack":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lkpl$1;->c:Lkpl;

    invoke-static {v8}, Lkpl;->a(Lkpl;)Lorg/android/agoo/message/MessageService;

    move-result-object v8

    iget-object v9, p0, Lkpl$1;->b:Ljava/lang/String;

    invoke-virtual {v8, v6, v5, v9}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "len":I
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "msgId":Ljava/lang/String;
    .end local v7    # "pack":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "AgooFactory"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "saveMsg fail:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
