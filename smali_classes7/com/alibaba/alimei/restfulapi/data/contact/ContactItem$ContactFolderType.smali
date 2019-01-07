.class public Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem$ContactFolderType;
.super Ljava/lang/Object;
.source "ContactItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactFolderType"
.end annotation


# static fields
.field public static final TYPE_BLACKED:I = 0x10

.field public static final TYPE_CONTACT:I = 0xe

.field public static final TYPE_MYSELF:I = 0x11

.field public static final TYPE_RECENTED:I = 0xf


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method
