.class public final Lcom/alibaba/alimei/sdk/db/mail/columns/AttachmentColumns$AttachmentState;
.super Ljava/lang/Object;
.source "AttachmentColumns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/db/mail/columns/AttachmentColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachmentState"
.end annotation


# static fields
.field public static final FAILED:I = 0x1

.field public static final NOT_SAVED:I = 0x0

.field public static final SAVED:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
