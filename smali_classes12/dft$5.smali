.class final Ldft$5;
.super Lcmg;
.source "ConversationThemeApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldft;->a(Ljava/lang/String;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldft;


# direct methods
.method constructor <init>(Ldft;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldft;

    .prologue
    .line 100
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Ldft$5;->a:Ldft;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 100
    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method
