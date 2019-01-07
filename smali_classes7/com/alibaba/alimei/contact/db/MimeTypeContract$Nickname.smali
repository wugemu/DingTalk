.class public final Lcom/alibaba/alimei/contact/db/MimeTypeContract$Nickname;
.super Ljava/lang/Object;
.source "MimeTypeContract.java"

# interfaces
.implements Lcom/alibaba/alimei/contact/db/MimeTypeContract$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/contact/db/MimeTypeContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Nickname"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/nickname"

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_MAIDEN_NAME:I = 0x3

.field public static final TYPE_OTHER_NAME:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    return-void
.end method
