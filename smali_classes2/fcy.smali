.class public abstract Lfcy;
.super Ljava/lang/Object;
.source "BaseViewHolderFactory.java"


# instance fields
.field protected b:Lfcm$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)I
    .locals 5
    .param p0, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    const/16 v2, 0x64

    .line 33
    if-nez p0, :cond_0

    .line 34
    const-string/jumbo v2, "Circle"

    const-string/jumbo v3, "CircleTag"

    const-string/jumbo v4, "postObject == null in getNormalType"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v1, -0x1

    .line 60
    :goto_0
    :pswitch_0
    return v1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 39
    .local v0, "content":Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;
    if-nez v0, :cond_1

    .line 40
    const/4 v1, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->isFromTakePhoto()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    const/16 v1, 0x65

    goto :goto_0

    .line 47
    :cond_2
    iget v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    .line 48
    .local v1, "contentType":I
    if-lt v1, v2, :cond_3

    move v1, v2

    .line 49
    goto :goto_0

    .line 51
    :cond_3
    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 60
    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lfcm;
.end method

.method public a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)Lfcm;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "post"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {p3}, Lfcy;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lfcy;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lfcm;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lfcm$b;)V
    .locals 0
    .param p1, "listener"    # Lfcm$b;

    .prologue
    .line 23
    iput-object p1, p0, Lfcy;->b:Lfcm$b;

    .line 24
    return-void
.end method
