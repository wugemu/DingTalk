.class public final Leks;
.super Ljava/lang/Object;
.source "DocLensProxyImpl.java"

# interfaces
.implements Lgrl;


# static fields
.field static a:Z


# instance fields
.field private b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "extra"    # Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/forward.html"

    new-instance v2, Leks$3;

    invoke-direct {v2, p0, p2}, Leks$3;-><init>(Leks;Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 150
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/util/List;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    .local p2, "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "DocLensProxyImpl"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "create space folder and upload fail : no files to upload"

    aput-object v4, v2, v3

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const v0, 0x7f090175

    invoke-static {v0}, Lhcn;->a(I)V

    .line 183
    :goto_0
    return-void

    .line 164
    :cond_1
    const v0, 0x7f091ed4

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Leks;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Leks$4;

    invoke-direct {v1, p0, p2, p1}, Leks$4;-><init>(Leks;Ljava/util/List;Landroid/app/Activity;)V

    const-class v2, Lcma;

    .line 166
    invoke-interface {v0, v1, v2, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 165
    invoke-static {p1, v0}, Leks;->a(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcma;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->k()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "spaceId":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "/"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const v4, 0x7f0918a0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "path":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V

    .line 323
    return-void
.end method

.method static synthetic a(Leks;)V
    .locals 1
    .param p0, "x0"    # Leks;

    .prologue
    .line 48
    .line 1198
    iget-object v0, p0, Leks;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Leks;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 327
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Leks$8;

    invoke-direct {v2, p0, p1}, Leks$8;-><init>(Leks;Landroid/app/Activity;)V

    const-class v3, Lcma;

    .line 328
    invoke-interface {v1, v2, v3, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 355
    .local v0, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    invoke-static {p1, v0}, Leks;->a(Landroid/content/Context;Lcma;)V

    .line 356
    return-void
.end method

.method a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Leks;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leks;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 189
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Leks;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 192
    :cond_1
    iget-object v0, p0, Leks;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    iget-object v0, p0, Leks;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 195
    :cond_2
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "from"    # Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 292
    sget-object v2, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->ALBUM:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    if-ne p3, v2, :cond_1

    .line 294
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 295
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lhcp;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    sget-object v2, Lhcp;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    sget-object v2, Lhcp;->f:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/dingtalk/doclens/DocFileType;->PDF:Lcom/alibaba/dingtalk/doclens/DocFileType;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 298
    invoke-static {p1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 301
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Leks$7;

    invoke-direct {v3, p0, p1}, Leks$7;-><init>(Leks;Landroid/app/Activity;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    sget-object v2, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->SCAN:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    if-ne p3, v2, :cond_0

    .line 311
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;-><init>()V

    .line 312
    .local v0, "extra":Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->setDocPdfPath(Ljava/lang/String;)V

    .line 313
    sget-object v2, Lcom/alibaba/dingtalk/doclens/DocFileType;->PDF:Lcom/alibaba/dingtalk/doclens/DocFileType;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->setType(Lcom/alibaba/dingtalk/doclens/DocFileType;)V

    .line 314
    invoke-direct {p0, p1, v0}, Leks;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Leks;->a(Landroid/app/Activity;Ljava/util/List;)V

    .line 155
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "from"    # Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    .local p2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->ALBUM:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    if-ne p3, v2, :cond_1

    .line 116
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lhcp;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    sget-object v2, Lhcp;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 119
    sget-object v2, Lhcp;->f:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/dingtalk/doclens/DocFileType;->IMAGE:Lcom/alibaba/dingtalk/doclens/DocFileType;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 120
    invoke-static {p1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 122
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Leks$2;

    invoke-direct {v3, p0, p1}, Leks$2;-><init>(Leks;Landroid/app/Activity;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    sget-object v2, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->SCAN:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    if-ne p3, v2, :cond_0

    .line 132
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;-><init>()V

    .line 133
    .local v0, "extra":Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->setDocImagePath(Ljava/util/ArrayList;)V

    .line 134
    sget-object v2, Lcom/alibaba/dingtalk/doclens/DocFileType;->IMAGE:Lcom/alibaba/dingtalk/doclens/DocFileType;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->setType(Lcom/alibaba/dingtalk/doclens/DocFileType;)V

    .line 135
    invoke-direct {p0, p1, v0}, Leks;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    sget-boolean v0, Leks;->a:Z

    if-eqz v0, :cond_1

    .line 56
    if-eqz p2, :cond_0

    .line 57
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    new-instance v1, Leks$1;

    invoke-direct {v1, p0, p1, p2}, Leks$1;-><init>(Leks;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 205
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "DocLensProxyImpl"

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "save PDF to space fail : no files to save"

    aput-object v5, v3, v4

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-direct {p0, p1, v0}, Leks;->a(Landroid/app/Activity;Ljava/util/List;)V

    goto :goto_0
.end method
