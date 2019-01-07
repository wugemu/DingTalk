.class public final enum Lrx/internal/subscriptions/Unsubscribed;
.super Ljava/lang/Enum;
.source "Unsubscribed.java"

# interfaces
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/internal/subscriptions/Unsubscribed;",
        ">;",
        "Llgz;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/internal/subscriptions/Unsubscribed;

.field public static final enum INSTANCE:Lrx/internal/subscriptions/Unsubscribed;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    new-instance v0, Lrx/internal/subscriptions/Unsubscribed;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lrx/internal/subscriptions/Unsubscribed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/internal/subscriptions/Unsubscribed;

    sget-object v1, Lrx/internal/subscriptions/Unsubscribed;->INSTANCE:Lrx/internal/subscriptions/Unsubscribed;

    aput-object v1, v0, v2

    sput-object v0, Lrx/internal/subscriptions/Unsubscribed;->$VALUES:[Lrx/internal/subscriptions/Unsubscribed;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/subscriptions/Unsubscribed;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lrx/internal/subscriptions/Unsubscribed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/internal/subscriptions/Unsubscribed;

    return-object v0
.end method

.method public static values()[Lrx/internal/subscriptions/Unsubscribed;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lrx/internal/subscriptions/Unsubscribed;->$VALUES:[Lrx/internal/subscriptions/Unsubscribed;

    invoke-virtual {v0}, [Lrx/internal/subscriptions/Unsubscribed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/subscriptions/Unsubscribed;

    return-object v0
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public final unsubscribe()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
