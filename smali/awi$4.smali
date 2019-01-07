.class final Lawi$4;
.super Ljava/lang/Object;
.source "SystemEventUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawi;->a(JLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(JLcom/alibaba/wukong/Callback;)V
    .locals 1

    .prologue
    .line 443
    iput-wide p1, p0, Lawi$4;->a:J

    iput-object p3, p0, Lawi$4;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 450
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 451
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lawi$4;->a:J

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 452
    .local v1, "deleteUri":Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 456
    .local v3, "rows":I
    if-lez v3, :cond_0

    .line 457
    iget-object v4, p0, Lawi$4;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {v4, v8}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 462
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "deleteUri":Landroid/net/Uri;
    .end local v3    # "rows":I
    :goto_0
    return-void

    .line 459
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v1    # "deleteUri":Landroid/net/Uri;
    .restart local v3    # "rows":I
    :cond_0
    iget-object v4, p0, Lawi$4;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v5, "-1"

    const-string/jumbo v6, "delete failed."

    invoke-static {v4, v5, v6}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "deleteUri":Landroid/net/Uri;
    .end local v3    # "rows":I
    :catch_0
    move-exception v2

    .line 454
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "[deleteSystemEventById] failed"

    invoke-static {v4, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    iget-object v4, p0, Lawi$4;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v5, "-1"

    const-string/jumbo v6, "delete failed."

    invoke-static {v4, v5, v6}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 459
    iget-object v5, p0, Lawi$4;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v6, "-1"

    const-string/jumbo v7, "delete failed."

    invoke-static {v5, v6, v7}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method
