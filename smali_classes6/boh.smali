.class public abstract Lboh;
.super Ljava/lang/Object;
.source "BaseViewHolderFactory.java"


# instance fields
.field protected b:Lbnv$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)I
    .locals 5
    .param p0, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    const/16 v2, 0x64

    .line 32
    if-nez p0, :cond_0

    .line 33
    const-string/jumbo v2, "Circle"

    const-string/jumbo v3, "CircleTag"

    const-string/jumbo v4, "postObject == null in getNormalType"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v1, -0x1

    .line 53
    :goto_0
    :pswitch_0
    return v1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 38
    .local v0, "content":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->isFromTakePhoto()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    const/16 v1, 0x65

    goto :goto_0

    .line 44
    :cond_2
    iget v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    .line 45
    .local v1, "contentType":I
    if-lt v1, v2, :cond_3

    move v1, v2

    goto :goto_0

    .line 46
    :cond_3
    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 53
    goto :goto_0

    .line 46
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
.method public abstract a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lbnv;
.end method

.method public a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)Lbnv;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "post"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {p3}, Lboh;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lboh;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lbnv;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lbnv$d;)V
    .locals 0
    .param p1, "listener"    # Lbnv$d;

    .prologue
    .line 22
    iput-object p1, p0, Lboh;->b:Lbnv$d;

    .line 23
    return-void
.end method
