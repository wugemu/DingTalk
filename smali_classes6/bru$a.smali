.class final Lbru$a;
.super Ljava/lang/Object;
.source "CacheUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbru;


# direct methods
.method private constructor <init>(Lbru;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lbru$a;->a:Lbru;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbru;B)V
    .locals 0
    .param p1, "x0"    # Lbru;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lbru$a;-><init>(Lbru;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "appContext":Landroid/app/Application;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 293
    :goto_0
    if-eqz v0, :cond_0

    .line 294
    const-string/jumbo v4, "key_doc_cache_check_date"

    invoke-static {v0, v4}, Lhcy;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "lastUpdateDate":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 297
    .local v2, "format":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "date":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 299
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    .end local v1    # "date":Ljava/lang/String;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    .end local v3    # "lastUpdateDate":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 304
    .restart local v1    # "date":Ljava/lang/String;
    .restart local v2    # "format":Ljava/text/SimpleDateFormat;
    .restart local v3    # "lastUpdateDate":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "key_doc_cache_check_date"

    invoke-static {v0, v4, v1}, Lhcy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v4, p0, Lbru$a;->a:Lbru;

    invoke-static {v4}, Lbru;->a(Lbru;)V

    goto :goto_1

    .end local v1    # "date":Ljava/lang/String;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    .end local v3    # "lastUpdateDate":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
