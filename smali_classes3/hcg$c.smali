.class public final Lhcg$c;
.super Ljava/lang/Object;
.source "ChatMsgImageCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lhcg$b;

.field public final b:Lhcg$b;


# direct methods
.method public constructor <init>(Lhcg$b;Lhcg$b;)V
    .locals 0
    .param p1, "maxSize"    # Lhcg$b;
    .param p2, "minSize"    # Lhcg$b;

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lhcg$c;->a:Lhcg$b;

    .line 180
    iput-object p2, p0, Lhcg$c;->b:Lhcg$b;

    .line 181
    return-void
.end method
