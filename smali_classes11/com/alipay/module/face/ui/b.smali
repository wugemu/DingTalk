.class final Lcom/alipay/module/face/ui/b;
.super Landroid/text/method/NumberKeyListener;
.source "FaceInputUserInfo.java"


# instance fields
.field final synthetic a:Lcom/alipay/module/face/ui/FaceInputUserInfo;


# direct methods
.method constructor <init>(Lcom/alipay/module/face/ui/FaceInputUserInfo;)V
    .locals 1

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alipay/module/face/ui/b;->a:Lcom/alipay/module/face/ui/FaceInputUserInfo;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method protected final getAcceptedChars()[C
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 99
    return-object v0

    .line 98
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x78s
        0x58s
    .end array-data
.end method

.method public final getInputType()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method
