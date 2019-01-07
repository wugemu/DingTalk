.class public final enum Lorg/webrtc/ali/SessionDescription$Type;
.super Ljava/lang/Enum;
.source "SessionDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/SessionDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/SessionDescription$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/SessionDescription$Type;

.field public static final enum ANSWER:Lorg/webrtc/ali/SessionDescription$Type;

.field public static final enum OFFER:Lorg/webrtc/ali/SessionDescription$Type;

.field public static final enum PRANSWER:Lorg/webrtc/ali/SessionDescription$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/webrtc/ali/SessionDescription$Type;

    const-string/jumbo v1, "OFFER"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/SessionDescription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/SessionDescription$Type;->OFFER:Lorg/webrtc/ali/SessionDescription$Type;

    .line 24
    new-instance v0, Lorg/webrtc/ali/SessionDescription$Type;

    const-string/jumbo v1, "PRANSWER"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/SessionDescription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/SessionDescription$Type;->PRANSWER:Lorg/webrtc/ali/SessionDescription$Type;

    .line 25
    new-instance v0, Lorg/webrtc/ali/SessionDescription$Type;

    const-string/jumbo v1, "ANSWER"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/ali/SessionDescription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/SessionDescription$Type;->ANSWER:Lorg/webrtc/ali/SessionDescription$Type;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/webrtc/ali/SessionDescription$Type;

    sget-object v1, Lorg/webrtc/ali/SessionDescription$Type;->OFFER:Lorg/webrtc/ali/SessionDescription$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/ali/SessionDescription$Type;->PRANSWER:Lorg/webrtc/ali/SessionDescription$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/ali/SessionDescription$Type;->ANSWER:Lorg/webrtc/ali/SessionDescription$Type;

    aput-object v1, v0, v4

    sput-object v0, Lorg/webrtc/ali/SessionDescription$Type;->$VALUES:[Lorg/webrtc/ali/SessionDescription$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromCanonicalForm(Ljava/lang/String;)Lorg/webrtc/ali/SessionDescription$Type;
    .locals 2
    .param p0, "canonical"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lorg/webrtc/ali/SessionDescription$Type;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/SessionDescription$Type;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/SessionDescription$Type;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/SessionDescription$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/webrtc/ali/SessionDescription$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/SessionDescription$Type;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/SessionDescription$Type;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/webrtc/ali/SessionDescription$Type;->$VALUES:[Lorg/webrtc/ali/SessionDescription$Type;

    invoke-virtual {v0}, [Lorg/webrtc/ali/SessionDescription$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/SessionDescription$Type;

    return-object v0
.end method


# virtual methods
.method public final canonicalForm()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/webrtc/ali/SessionDescription$Type;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
