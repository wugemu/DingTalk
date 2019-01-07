.class final Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0xb4

    const/16 v4, 0x5a

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "degree":I
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->e(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v3

    if-nez v3, :cond_5

    .line 230
    const/16 v0, 0x5a

    .line 242
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->e(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v3

    if-nez v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->j(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v3

    if-ne v3, v4, :cond_8

    .line 244
    add-int/lit8 v0, v0, 0x5a

    .line 252
    :cond_1
    :goto_1
    if-eqz p1, :cond_a

    .line 253
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3, p1}, Lhbx;->a(Landroid/content/Context;[B)Landroid/net/Uri;

    move-result-object v2

    .line 254
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_4

    .line 255
    const-string/jumbo v3, "Pick"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "CameraActivity onPictureTaken data length =>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string/jumbo v5, " uri=>"

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    const-class v4, Lcom/alibaba/laiwang/photokit/picker/edit/activity/picedit_activity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 258
    const-string/jumbo v3, "time"

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v4, v4, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->k(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string/jumbo v3, "username"

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v4, v4, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->l(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string/jumbo v3, "address"

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v4, v4, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->m(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string/jumbo v3, "dateWeather"

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v4, v4, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->n(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string/jumbo v3, "degree"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    const-string/jumbo v3, "i18nlogo"

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v4, v4, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->o(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->e(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    const-string/jumbo v3, "nonfacingback"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    :cond_2
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->p(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    const-string/jumbo v3, "surfaceview_resize"

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v4, v4, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->p(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    const-string/jumbo v3, "surfaceview_width"

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v4, v4, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->q(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    const-string/jumbo v3, "surfaceview_height"

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v4, v4, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->r(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    const-string/jumbo v3, "display_height"

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v4, v4, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->s(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    :cond_3
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-virtual {v3, v1, v8}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 276
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3, v7}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;Z)Z

    .line 281
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_2
    return-void

    .line 232
    :cond_5
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->j(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v3

    if-nez v3, :cond_6

    .line 233
    const/16 v0, -0x5a

    goto/16 :goto_0

    .line 234
    :cond_6
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->j(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v3

    if-ne v3, v4, :cond_7

    .line 235
    add-int/lit16 v0, v0, -0xb4

    goto/16 :goto_0

    .line 236
    :cond_7
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->j(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 237
    add-int/lit8 v0, v0, 0x5a

    goto/16 :goto_0

    .line 245
    :cond_8
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->j(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v3

    if-ne v3, v5, :cond_9

    .line 246
    add-int/lit16 v0, v0, 0xb4

    goto/16 :goto_1

    .line 247
    :cond_9
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4$1;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->j(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_1

    .line 248
    add-int/lit8 v0, v0, -0x5a

    goto/16 :goto_1

    .line 279
    :cond_a
    const-string/jumbo v3, "Pick"

    const-string/jumbo v4, "CameraActivity onPictureTaken is null!"

    invoke-static {v3, v4}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
