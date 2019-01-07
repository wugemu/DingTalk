.class public final Lcom/alibaba/alimei/contact/db/ContactApiDataContract$Address;
.super Ljava/lang/Object;
.source "ContactApiDataContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/contact/db/ContactApiDataContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Address"
.end annotation


# static fields
.field public static final FLAG_ADDRESS:I = 0x3

.field public static final TYPE_HOME:Ljava/lang/String; = "homeAddress"

.field public static final TYPE_WORK:Ljava/lang/String; = "bussinessAddress"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .param p0, "itemType"    # I

    .prologue
    .line 58
    packed-switch p0, :pswitch_data_0

    .line 64
    const-string/jumbo v0, "bussinessAddress"

    :goto_0
    return-object v0

    .line 60
    :pswitch_0
    const-string/jumbo v0, "homeAddress"

    goto :goto_0

    .line 62
    :pswitch_1
    const-string/jumbo v0, "bussinessAddress"

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
