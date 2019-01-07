.class public final Lcom/alibaba/alimei/contact/db/ContactApiDataContract$Phone;
.super Ljava/lang/Object;
.source "ContactApiDataContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/contact/db/ContactApiDataContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phone"
.end annotation


# static fields
.field public static final FLAG_PHONE:I = 0x2

.field public static final TYPE_FAX:Ljava/lang/String; = "bussinessFax"

.field public static final TYPE_HOME:Ljava/lang/String; = "homePhone"

.field public static final TYPE_MOBILE:Ljava/lang/String; = "mobile"

.field public static final TYPE_WORK:Ljava/lang/String; = "workPhone"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .param p0, "itemType"    # I

    .prologue
    .line 36
    packed-switch p0, :pswitch_data_0

    .line 46
    const-string/jumbo v0, "workPhone"

    :goto_0
    return-object v0

    .line 38
    :pswitch_0
    const-string/jumbo v0, "mobile"

    goto :goto_0

    .line 40
    :pswitch_1
    const-string/jumbo v0, "workPhone"

    goto :goto_0

    .line 42
    :pswitch_2
    const-string/jumbo v0, "homePhone"

    goto :goto_0

    .line 44
    :pswitch_3
    const-string/jumbo v0, "bussinessFax"

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
