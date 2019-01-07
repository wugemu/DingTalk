.class Lcom/laiwang/protocol/android/af$a;
.super Ljava/lang/Object;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "length"    # I

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Lcom/laiwang/protocol/android/af$a;->a:I

    .line 132
    iput p2, p0, Lcom/laiwang/protocol/android/af$a;->b:I

    .line 133
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lcom/laiwang/protocol/android/af$a;
    .locals 3
    .param p0, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 136
    if-eqz p0, :cond_0

    .line 137
    new-instance v0, Lcom/laiwang/protocol/android/af$a;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/af$a;-><init>()V

    .line 138
    .local v0, "attrHeader":Lcom/laiwang/protocol/android/af$a;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/laiwang/protocol/android/af$a;->a:I

    .line 139
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/laiwang/protocol/android/af$a;->b:I

    .line 146
    .end local v0    # "attrHeader":Lcom/laiwang/protocol/android/af$a;
    :goto_0
    return-object v0

    .line 145
    :cond_0
    const-string/jumbo v1, "[pack] load attr header null err"

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public b(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 150
    iget v0, p0, Lcom/laiwang/protocol/android/af$a;->a:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 151
    iget v0, p0, Lcom/laiwang/protocol/android/af$a;->b:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 153
    return-void
.end method
