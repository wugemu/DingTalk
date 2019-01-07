.class public final Lbxb$5;
.super Ljava/lang/Object;
.source "VideoListeners.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxb;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbxb;


# direct methods
.method public constructor <init>(Lbxb;)V
    .locals 0
    .param p1, "this$0"    # Lbxb;

    .prologue
    .line 268
    iput-object p1, p0, Lbxb$5;->a:Lbxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 5
    .param p1, "focusChange"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 271
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "onAudioFocusChange, focusChange="

    aput-object v1, v0, v3

    .line 272
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 271
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    packed-switch p1, :pswitch_data_0

    .line 290
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 276
    :pswitch_1
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lbxb$5;->a:Lbxb;

    .line 1043
    iput-boolean v4, v0, Lbxb;->g:Z

    .line 278
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->d()V

    goto :goto_0

    .line 282
    :pswitch_2
    iget-object v0, p0, Lbxb$5;->a:Lbxb;

    .line 2043
    iget-boolean v0, v0, Lbxb;->g:Z

    .line 282
    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lbxb$5;->a:Lbxb;

    .line 3043
    iput-boolean v3, v0, Lbxb;->g:Z

    .line 284
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->c()V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
