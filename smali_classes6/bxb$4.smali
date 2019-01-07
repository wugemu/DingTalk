.class public final Lbxb$4;
.super Landroid/telephony/PhoneStateListener;
.source "VideoListeners.java"


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
    .line 234
    iput-object p1, p0, Lbxb$4;->a:Lbxb;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 237
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "onCallStateChanged, state="

    aput-object v1, v0, v3

    .line 238
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 237
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    packed-switch p1, :pswitch_data_0

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 242
    :pswitch_0
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lbxb$4;->a:Lbxb;

    .line 1043
    iput-boolean v4, v0, Lbxb;->i:Z

    .line 244
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->d()V

    goto :goto_0

    .line 248
    :pswitch_1
    iget-object v0, p0, Lbxb$4;->a:Lbxb;

    .line 2043
    iget-boolean v0, v0, Lbxb;->i:Z

    .line 248
    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lbxb$4;->a:Lbxb;

    .line 3043
    iput-boolean v3, v0, Lbxb;->i:Z

    .line 250
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->c()V

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
