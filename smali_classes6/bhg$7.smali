.class final Lbhg$7;
.super Ljava/lang/Object;
.source "DingDraftManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhg;->b(ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcma;

.field final synthetic c:Lbhg;


# direct methods
.method constructor <init>(Lbhg;ILcma;)V
    .locals 0
    .param p1, "this$0"    # Lbhg;

    .prologue
    .line 338
    iput-object p1, p0, Lbhg$7;->c:Lbhg;

    iput p2, p0, Lbhg$7;->a:I

    iput-object p3, p0, Lbhg$7;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 341
    iget-object v3, p0, Lbhg$7;->c:Lbhg;

    invoke-static {v3}, Lbhg;->a(Lbhg;)Lbgx;

    move-result-object v0

    .line 342
    .local v0, "dataSourceDraft":Lbgx;
    iget v3, p0, Lbhg$7;->a:I

    invoke-interface {v0, v3}, Lbgx;->a(I)Lcom/alibaba/android/ding/db/entry/EntryDraft;

    move-result-object v2

    .line 343
    .local v2, "entryDraft":Lcom/alibaba/android/ding/db/entry/EntryDraft;
    if-eqz v2, :cond_1

    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, "dingDraftObject":Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;
    iget-object v3, v2, Lcom/alibaba/android/ding/db/entry/EntryDraft;->draft:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 346
    iget-object v3, v2, Lcom/alibaba/android/ding/db/entry/EntryDraft;->draft:Ljava/lang/String;

    const-class v4, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

    invoke-static {v3, v4}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "dingDraftObject":Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;
    check-cast v1, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

    .line 348
    .restart local v1    # "dingDraftObject":Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;
    :cond_0
    iget-object v3, p0, Lbhg$7;->c:Lbhg;

    iget-object v4, p0, Lbhg$7;->b:Lcma;

    invoke-static {v3, v4, v1}, Lbhg;->a(Lbhg;Lcma;Ljava/lang/Object;)V

    .line 352
    .end local v1    # "dingDraftObject":Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v3, p0, Lbhg$7;->c:Lbhg;

    iget-object v4, p0, Lbhg$7;->b:Lcma;

    const-string/jumbo v5, "0"

    const-string/jumbo v6, "have no draft"

    invoke-static {v3, v4, v5, v6}, Lbhg;->a(Lbhg;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
