.class public final enum Lcom/alipay/euler/andfix/AndFixVM;
.super Ljava/lang/Enum;
.source "AndFixVM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/euler/andfix/AndFixVM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/euler/andfix/AndFixVM;

.field public static final enum AOC:Lcom/alipay/euler/andfix/AndFixVM;

.field public static final enum ART:Lcom/alipay/euler/andfix/AndFixVM;

.field public static final enum Dalvik:Lcom/alipay/euler/andfix/AndFixVM;

.field public static final enum Lemur:Lcom/alipay/euler/andfix/AndFixVM;

.field public static final enum NotSupport:Lcom/alipay/euler/andfix/AndFixVM;


# instance fields
.field name:Ljava/lang/String;

.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/alipay/euler/andfix/AndFixVM;

    const-string/jumbo v1, "NotSupport"

    const-string/jumbo v2, "NotSupport"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/alipay/euler/andfix/AndFixVM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/euler/andfix/AndFixVM;->NotSupport:Lcom/alipay/euler/andfix/AndFixVM;

    .line 10
    new-instance v0, Lcom/alipay/euler/andfix/AndFixVM;

    const-string/jumbo v1, "Dalvik"

    const-string/jumbo v2, "Dalvik"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/alipay/euler/andfix/AndFixVM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/euler/andfix/AndFixVM;->Dalvik:Lcom/alipay/euler/andfix/AndFixVM;

    .line 11
    new-instance v0, Lcom/alipay/euler/andfix/AndFixVM;

    const-string/jumbo v1, "ART"

    const-string/jumbo v2, "ART"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/alipay/euler/andfix/AndFixVM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/euler/andfix/AndFixVM;->ART:Lcom/alipay/euler/andfix/AndFixVM;

    .line 12
    new-instance v0, Lcom/alipay/euler/andfix/AndFixVM;

    const-string/jumbo v1, "Lemur"

    const-string/jumbo v2, "Lemur"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/alipay/euler/andfix/AndFixVM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/euler/andfix/AndFixVM;->Lemur:Lcom/alipay/euler/andfix/AndFixVM;

    .line 13
    new-instance v0, Lcom/alipay/euler/andfix/AndFixVM;

    const-string/jumbo v1, "AOC"

    const-string/jumbo v2, "AOC"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/alipay/euler/andfix/AndFixVM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/euler/andfix/AndFixVM;->AOC:Lcom/alipay/euler/andfix/AndFixVM;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/euler/andfix/AndFixVM;

    sget-object v1, Lcom/alipay/euler/andfix/AndFixVM;->NotSupport:Lcom/alipay/euler/andfix/AndFixVM;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/euler/andfix/AndFixVM;->Dalvik:Lcom/alipay/euler/andfix/AndFixVM;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/euler/andfix/AndFixVM;->ART:Lcom/alipay/euler/andfix/AndFixVM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/euler/andfix/AndFixVM;->Lemur:Lcom/alipay/euler/andfix/AndFixVM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/euler/andfix/AndFixVM;->AOC:Lcom/alipay/euler/andfix/AndFixVM;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alipay/euler/andfix/AndFixVM;->$VALUES:[Lcom/alipay/euler/andfix/AndFixVM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "v"    # I
    .param p4, "n"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/alipay/euler/andfix/AndFixVM;->value:I

    .line 22
    iput-object p4, p0, Lcom/alipay/euler/andfix/AndFixVM;->name:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/euler/andfix/AndFixVM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alipay/euler/andfix/AndFixVM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/euler/andfix/AndFixVM;

    return-object v0
.end method

.method public static values()[Lcom/alipay/euler/andfix/AndFixVM;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alipay/euler/andfix/AndFixVM;->$VALUES:[Lcom/alipay/euler/andfix/AndFixVM;

    invoke-virtual {v0}, [Lcom/alipay/euler/andfix/AndFixVM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/euler/andfix/AndFixVM;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AndFixVM{value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/euler/andfix/AndFixVM;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/euler/andfix/AndFixVM;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
