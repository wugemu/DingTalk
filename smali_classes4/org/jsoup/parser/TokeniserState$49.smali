.class final enum Lorg/jsoup/parser/TokeniserState$49;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1069
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method final read(Lles;Llem;)V
    .locals 3
    .param p1, "t"    # Lles;
    .param p2, "r"    # Llem;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1071
    invoke-virtual {p2}, Llem;->c()C

    move-result v0

    .line 1072
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1096
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 1097
    iget-object v1, p1, Lles;->m:Lorg/jsoup/parser/Token$b;

    iget-object v1, v1, Lorg/jsoup/parser/Token$b;->b:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1098
    sget-object v1, Lorg/jsoup/parser/TokeniserState$49;->Comment:Lorg/jsoup/parser/TokeniserState;

    .line 5113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 1100
    :goto_0
    return-void

    .line 1074
    :sswitch_0
    invoke-virtual {p1}, Lles;->b()V

    .line 1075
    sget-object v1, Lorg/jsoup/parser/TokeniserState$49;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 1113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1078
    :sswitch_1
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 1079
    iget-object v1, p1, Lles;->m:Lorg/jsoup/parser/Token$b;

    iget-object v1, v1, Lorg/jsoup/parser/Token$b;->b:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "--\ufffd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    sget-object v1, Lorg/jsoup/parser/TokeniserState$49;->Comment:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1083
    :sswitch_2
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 1084
    sget-object v1, Lorg/jsoup/parser/TokeniserState$49;->CommentEndBang:Lorg/jsoup/parser/TokeniserState;

    .line 3113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1087
    :sswitch_3
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 1088
    iget-object v1, p1, Lles;->m:Lorg/jsoup/parser/Token$b;

    iget-object v1, v1, Lorg/jsoup/parser/Token$b;->b:Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1091
    :sswitch_4
    invoke-virtual {p1, p0}, Lles;->c(Lorg/jsoup/parser/TokeniserState;)V

    .line 1092
    invoke-virtual {p1}, Lles;->b()V

    .line 1093
    sget-object v1, Lorg/jsoup/parser/TokeniserState$49;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 4113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1072
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x21 -> :sswitch_2
        0x2d -> :sswitch_3
        0x3e -> :sswitch_0
        0xffff -> :sswitch_4
    .end sparse-switch
.end method
