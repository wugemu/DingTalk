.class final Lbhg$2;
.super Ljava/lang/Object;
.source "DingDraftManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhg;->a(Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

.field final synthetic b:Lcma;

.field final synthetic c:I

.field final synthetic d:Lbhg;


# direct methods
.method constructor <init>(Lbhg;Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;Lcma;I)V
    .locals 0
    .param p1, "this$0"    # Lbhg;

    .prologue
    .line 146
    iput-object p1, p0, Lbhg$2;->d:Lbhg;

    iput-object p2, p0, Lbhg$2;->a:Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

    iput-object p3, p0, Lbhg$2;->b:Lcma;

    iput p4, p0, Lbhg$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 151
    .local v1, "draft":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lbhg$2;->a:Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

    invoke-static {v4}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 155
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    iget-object v4, p0, Lbhg$2;->d:Lbhg;

    iget-object v5, p0, Lbhg$2;->b:Lcma;

    const-string/jumbo v6, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    sget v8, Laxp$i;->unknown_error:I

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lbhg;->a(Lbhg;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_1
    return-void

    .line 152
    :catch_0
    move-exception v3

    .line 153
    .local v3, "ex":Ljava/lang/Throwable;
    const-string/jumbo v4, "[DingDraftManager]dingDraftObject to json failed"

    invoke-static {v4, v3}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 159
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_0
    iget-object v4, p0, Lbhg$2;->d:Lbhg;

    invoke-static {v4}, Lbhg;->a(Lbhg;)Lbgx;

    move-result-object v0

    .line 160
    .local v0, "dataSourceDraft":Lbgx;
    new-instance v2, Lcom/alibaba/android/ding/db/entry/EntryDraft;

    invoke-direct {v2}, Lcom/alibaba/android/ding/db/entry/EntryDraft;-><init>()V

    .line 161
    .local v2, "entryDraft":Lcom/alibaba/android/ding/db/entry/EntryDraft;
    iput-object v1, v2, Lcom/alibaba/android/ding/db/entry/EntryDraft;->draft:Ljava/lang/String;

    .line 162
    iget v4, p0, Lbhg$2;->c:I

    iput v4, v2, Lcom/alibaba/android/ding/db/entry/EntryDraft;->draftType:I

    .line 163
    invoke-interface {v0, v2}, Lbgx;->a(Lcom/alibaba/android/ding/db/entry/EntryDraft;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    iget-object v4, p0, Lbhg$2;->d:Lbhg;

    iget-object v5, p0, Lbhg$2;->b:Lcma;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lbhg;->a(Lbhg;Lcma;Ljava/lang/Object;)V

    goto :goto_1

    .line 166
    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[DingDraftManager] dingDraftObject saveDraft error"

    aput-object v6, v4, v5

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    .line 167
    iget-object v4, p0, Lbhg$2;->d:Lbhg;

    iget-object v5, p0, Lbhg$2;->b:Lcma;

    const-string/jumbo v6, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    sget v8, Laxp$i;->unknown_error:I

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lbhg;->a(Lbhg;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
