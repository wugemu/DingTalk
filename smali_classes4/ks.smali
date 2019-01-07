.class public final Lks;
.super Ljava/lang/Object;
.source "ErrorConstant.java"


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 48
    sput-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, 0xc8

    const-string/jumbo v2, "\u8bf7\u6c42\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x64

    const-string/jumbo v2, "\u672a\u77e5\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x65

    const-string/jumbo v2, "\u53d1\u751f\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x66

    const-string/jumbo v2, "\u975e\u6cd5\u53c2\u6570"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x67

    const-string/jumbo v2, "\u8fdc\u7a0b\u8c03\u7528\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x68

    const-string/jumbo v2, "ACCS\u975e\u6cd5\u9274\u6743\u53c2\u6570"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x69

    const-string/jumbo v2, "ACCS\u81ea\u5b9a\u4e49\u5e27\u56de\u8c03\u4e3a\u7a7a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x6a

    const-string/jumbo v2, "\u6587\u4ef6renameTo\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x6b

    const-string/jumbo v2, "\u5b58\u5728\u91cd\u590d\u7684accs\u957f\u8fde"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x6c

    const-string/jumbo v2, "\u83b7\u53d6Process\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0xc8

    const-string/jumbo v2, "\u65e0\u7f51\u7edc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0xcb

    const-string/jumbo v2, "\u7f51\u7edc\u5e93\u65e0\u7b56\u7565"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0xca

    const-string/jumbo v2, "\u8bf7\u6c42\u8d85\u65f6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0xcc

    const-string/jumbo v2, "\u8bf7\u6c42\u88ab\u53d6\u6d88"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x12d

    const-string/jumbo v2, "Session\u4e0d\u53ef\u7528"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x12c

    const-string/jumbo v2, "tnet\u5c42\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x12e

    const-string/jumbo v2, "\u9274\u6743\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x12f

    const-string/jumbo v2, "\u81ea\u5b9a\u4e49\u5e27\u6570\u636e\u8fc7\u5927"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x190

    const-string/jumbo v2, "\u8fde\u63a5\u8d85\u65f6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x191

    const-string/jumbo v2, "Socket\u8d85\u65f6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x192

    const-string/jumbo v2, "SSL\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x193

    const-string/jumbo v2, "\u57df\u540d\u672a\u8ba4\u8bc1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x194

    const-string/jumbo v2, "IO\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x195

    const-string/jumbo v2, "\u57df\u540d\u4e0d\u80fd\u89e3\u6790"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x196

    const-string/jumbo v2, "\u8fde\u63a5\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    const/16 v1, -0x197

    const-string/jumbo v2, "\u6253\u5f00\u8fde\u63a5\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 80
    sget-object v0, Lks;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lla;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "errorCode"    # I
    .param p1, "appendMsg"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Lks;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lla;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
