.class final Ldft$3;
.super Lcmg;
.source "ConversationThemeApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldft;->a(Ljava/lang/String;Ljava/lang/String;Ldgd;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldfz;",
        "Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;",
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
    .line 71
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;>;"
    iput-object p1, p0, Ldft$3;->a:Ldft;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    check-cast p1, Ldfz;

    .line 1074
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->fromIdl(Ldfz;)Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    move-result-object v0

    .line 71
    return-object v0
.end method
