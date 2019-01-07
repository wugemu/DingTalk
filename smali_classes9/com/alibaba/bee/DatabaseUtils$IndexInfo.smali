.class Lcom/alibaba/bee/DatabaseUtils$IndexInfo;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/bee/DatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IndexInfo"
.end annotation


# instance fields
.field columnName:Ljava/lang/String;

.field seq:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "seq"    # I

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p1, p0, Lcom/alibaba/bee/DatabaseUtils$IndexInfo;->columnName:Ljava/lang/String;

    .line 423
    iput p2, p0, Lcom/alibaba/bee/DatabaseUtils$IndexInfo;->seq:I

    .line 424
    return-void
.end method
