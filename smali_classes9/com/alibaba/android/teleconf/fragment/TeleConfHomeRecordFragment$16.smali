.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Lewh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Levg;)V
    .locals 8
    .param p1, "ad"    # Levg;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1251
    invoke-static {}, Lewh;->a()Lewh;

    invoke-static {}, Lewh;->f()Z

    move-result v3

    .line 1252
    .local v3, "show":Z
    if-eqz p1, :cond_0

    if-nez v3, :cond_1

    .line 1253
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v4, v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Z)Z

    .line 1254
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v4, v7}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Levg;)Levg;

    .line 1318
    :goto_0
    return-void

    .line 1256
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1257
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v4, v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Z)Z

    goto :goto_0

    .line 1261
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->I(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1262
    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "List already has a virtual record"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1266
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Z)Z

    .line 1268
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v4, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Levg;)Levg;

    .line 1271
    new-instance v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemVirtual:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-direct {v2, v4}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;)V

    .line 1272
    .local v2, "record":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    iget-object v4, p1, Levg;->c:Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->b:Ljava/lang/String;

    .line 1273
    iget-object v4, p1, Levg;->f:Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->c:Ljava/lang/String;

    .line 1274
    iget-object v4, p1, Levg;->e:Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->d:Ljava/lang/String;

    .line 1275
    iget-object v4, p1, Levg;->h:Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->e:Ljava/lang/String;

    .line 1276
    iget-object v4, p1, Levg;->i:Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->f:Ljava/lang/String;

    .line 1278
    iget-object v4, p1, Levg;->l:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1280
    const/4 v1, 0x0

    .line 1282
    .local v1, "mediaUrl":Ljava/lang/String;
    :try_start_0
    iget-object v4, p1, Levg;->l:Ljava/lang/String;

    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1286
    :goto_1
    iput-object v1, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->m:Ljava/lang/String;

    .line 1289
    .end local v1    # "mediaUrl":Ljava/lang/String;
    :cond_4
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->m:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1290
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->n(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Levg;

    move-result-object v4

    iget-object v5, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->m:Ljava/lang/String;

    iput-object v5, v4, Levg;->l:Ljava/lang/String;

    .line 1292
    invoke-static {}, Levx;->a()Levx;

    move-result-object v4

    iget-object v5, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->m:Ljava/lang/String;

    invoke-virtual {v4, v5}, Levx;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1293
    .local v0, "isProload":Z
    if-nez v0, :cond_5

    .line 1294
    invoke-static {}, Levx;->a()Levx;

    move-result-object v4

    iget-object v5, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->m:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Levx;->a(Ljava/lang/String;Levx$a;)V

    .line 1298
    .end local v0    # "isProload":Z
    :cond_5
    new-instance v4, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

    invoke-direct {v4}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;-><init>()V

    iput-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

    .line 1299
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

    iget v5, p1, Levg;->j:I

    iput v5, v4, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;->a:I

    .line 1300
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

    iget v5, p1, Levg;->d:I

    iput v5, v4, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;->b:I

    .line 1301
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

    iget v5, p1, Levg;->g:I

    iput v5, v4, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;->c:I

    .line 1303
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16$1;

    invoke-direct {v5, p0, v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V

    const-wide/16 v6, 0x5dc

    invoke-virtual {v4, v5, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1284
    .restart local v1    # "mediaUrl":Ljava/lang/String;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Media transfer exp"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
