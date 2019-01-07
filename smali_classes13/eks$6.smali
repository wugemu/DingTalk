.class final Leks$6;
.super Ljava/lang/Object;
.source "DocLensProxyImpl.java"

# interfaces
.implements Lgqt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/LinkedList;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic d:Leks;


# direct methods
.method constructor <init>(Leks;Ljava/util/LinkedList;Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 0
    .param p1, "this$0"    # Leks;

    .prologue
    .line 247
    iput-object p1, p0, Leks$6;->d:Leks;

    iput-object p2, p0, Leks$6;->a:Ljava/util/LinkedList;

    iput-object p3, p0, Leks$6;->b:Landroid/app/Activity;

    iput-object p4, p0, Leks$6;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 281
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "DocLensProxyImpl"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "upload file to space exception : "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " msg: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Leks$6;->d:Leks;

    invoke-static {v0}, Leks;->a(Leks;)V

    .line 283
    iget-object v0, p0, Leks$6;->b:Landroid/app/Activity;

    iget-object v1, p0, Leks$6;->b:Landroid/app/Activity;

    const v2, 0x7f0919a7    # 1.8223743E38f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public final onProgress(JJ)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l1"    # J

    .prologue
    .line 250
    return-void
.end method

.method public final onSuccess(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 8
    .param p1, "s"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 254
    iget-object v1, p0, Leks$6;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Leks$6;->d:Leks;

    invoke-static {v1}, Leks;->a(Leks;)V

    .line 256
    iget-object v1, p0, Leks$6;->d:Leks;

    iget-object v2, p0, Leks$6;->b:Landroid/app/Activity;

    .line 1215
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    invoke-direct {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1216
    const v4, 0x7f090680

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f0918a0

    .line 1217
    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1216
    invoke-virtual {v2, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1218
    const v2, 0x7f091d41

    new-instance v4, Leks$5;

    invoke-direct {v4, v1}, Leks$5;-><init>(Leks;)V

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1224
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 277
    :goto_0
    return-void

    .line 258
    :cond_0
    move-object v0, p0

    .line 259
    .local v0, "listener":Lgqt;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Leks$6$1;

    invoke-direct {v2, p0, v0}, Leks$6$1;-><init>(Leks$6;Lgqt;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
