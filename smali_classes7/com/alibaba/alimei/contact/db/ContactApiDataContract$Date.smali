.class public final Lcom/alibaba/alimei/contact/db/ContactApiDataContract$Date;
.super Ljava/lang/Object;
.source "ContactApiDataContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/contact/db/ContactApiDataContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Date"
.end annotation


# static fields
.field public static final FLAG_DATE:I = 0x4

.field public static final TYPE_ANNIVERSARY:Ljava/lang/String; = "anniversary"

.field public static final TYPE_BIRTHDAY:Ljava/lang/String; = "birthday"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .param p0, "itemType"    # I

    .prologue
    .line 76
    packed-switch p0, :pswitch_data_0

    .line 82
    const-string/jumbo v0, "anniversary"

    :goto_0
    return-object v0

    .line 78
    :pswitch_0
    const-string/jumbo v0, "anniversary"

    goto :goto_0

    .line 80
    :pswitch_1
    const-string/jumbo v0, "birthday"

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
