.class final Ldea$8;
.super Ljava/lang/Object;
.source "ChatSendPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldea;


# direct methods
.method constructor <init>(Ldea;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldea;

    .prologue
    .line 331
    iput-object p1, p0, Ldea$8;->b:Ldea;

    iput-object p2, p0, Ldea$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 334
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 335
    .local v4, "sdf":Ljava/text/DateFormat;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lctk$i;->dt_im_long_text:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "fileName":Ljava/lang/String;
    invoke-static {v2}, Ldhx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, "localPath":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 339
    .local v0, "bw":Ljava/io/BufferedWriter;
    iget-object v5, p0, Ldea$8;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 341
    iget-object v5, p0, Ldea$8;->b:Ldea;

    .line 1095
    invoke-virtual {v5}, Ldea;->a()Ldiz;

    move-result-object v5

    .line 1425
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Ldiz;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
