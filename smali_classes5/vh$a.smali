.class final Lvh$a;
.super Ljava/lang/Object;
.source "MimeMessage.java"

# interfaces
.implements Lksi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lvh;

.field private b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvh;)V
    .locals 1
    .param p1, "this$0"    # Lvh;

    .prologue
    .line 604
    iput-object p1, p0, Lvh$a;->a:Lvh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lvh$a;->b:Ljava/util/Stack;

    .line 605
    return-void
.end method

.method private a(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 609
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lvh$a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Internal stack error: Expected \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvh$a;->b:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 618
    iget-object v2, p0, Lvh$a;->b:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    iget-object v2, p0, Lvh$a;->b:Ljava/util/Stack;

    iget-object v3, p0, Lvh$a;->a:Lvh;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    :goto_0
    return-void

    .line 624
    :cond_0
    const-class v2, Lvs;

    invoke-direct {p0, v2}, Lvh$a;->a(Ljava/lang/Class;)V

    .line 627
    :try_start_0
    new-instance v0, Lvh;

    invoke-direct {v0}, Lvh;-><init>()V

    .line 628
    .local v0, "m":Lvh;
    iget-object v2, p0, Lvh$a;->b:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvs;

    invoke-interface {v2, v0}, Lvs;->a(Lvp;)V

    .line 629
    iget-object v2, p0, Lvh$a;->b:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 631
    .end local v0    # "m":Lvh;
    :catch_0
    move-exception v1

    .line 633
    .local v1, "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final a(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 746
    const-class v2, Lvi;

    invoke-direct {p0, v2}, Lvh$a;->a(Ljava/lang/Class;)V

    .line 747
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 749
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 751
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 754
    :cond_0
    return-void
.end method

.method public final a(Lksl;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "bd"    # Lksl;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 705
    const-class v2, Lvs;

    invoke-direct {p0, v2}, Lvh$a;->a(Ljava/lang/Class;)V

    .line 706
    invoke-interface {p1}, Lksl;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lvj;->a(Ljava/io/InputStream;Ljava/lang/String;)Lvp;

    move-result-object v0

    .line 709
    .local v0, "body":Lvp;
    :try_start_0
    iget-object v2, p0, Lvh$a;->b:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvs;

    invoke-interface {v2, v0}, Lvs;->a(Lvp;)V
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    return-void

    .line 711
    :catch_0
    move-exception v1

    .line 713
    .local v1, "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final a(Lksw;)V
    .locals 5
    .param p1, "field"    # Lksw;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 651
    const-class v2, Lvs;

    invoke-direct {p0, v2}, Lvh$a;->a(Ljava/lang/Class;)V

    .line 1108
    :try_start_0
    iget-object v2, p1, Lksw;->a:Lksy;

    if-nez v2, :cond_0

    .line 1109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lksw;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lksw;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/james/mime4j/util/MimeUtil;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkta;->a(Ljava/lang/String;)Lksy;

    move-result-object v2

    iput-object v2, p1, Lksw;->a:Lksy;

    .line 1111
    :cond_0
    iget-object v2, p1, Lksw;->a:Lksy;

    .line 654
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lkqv;->a(Lksy;Lkqa;)Lkqn;

    move-result-object v1

    .line 655
    .local v1, "parsedField":Lkqk;
    iget-object v2, p0, Lvh$a;->b:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvs;

    invoke-interface {v1}, Lkqk;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lkqk;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lvs;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 664
    return-void

    .line 657
    .end local v1    # "parsedField":Lkqk;
    :catch_0
    move-exception v0

    .line 659
    .local v0, "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 661
    .end local v0    # "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v0

    .line 663
    .local v0, "me":Lorg/apache/james/mime4j/MimeException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 640
    const-class v0, Lvh;

    invoke-direct {p0, v0}, Lvh$a;->a(Ljava/lang/Class;)V

    .line 641
    iget-object v0, p0, Lvh$a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 642
    return-void
.end method

.method public final b(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 758
    const-class v2, Lvi;

    invoke-direct {p0, v2}, Lvh$a;->a(Ljava/lang/Class;)V

    .line 759
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 761
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 763
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 765
    :cond_0
    iget-object v2, p0, Lvh$a;->b:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvi;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lvi;->b(Ljava/lang/String;)V

    .line 767
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 646
    const-class v0, Lvs;

    invoke-direct {p0, v0}, Lvh$a;->a(Ljava/lang/Class;)V

    .line 647
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 683
    const-class v0, Lvs;

    invoke-direct {p0, v0}, Lvh$a;->a(Ljava/lang/Class;)V

    .line 684
    return-void
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 688
    const-class v3, Lvs;

    invoke-direct {p0, v3}, Lvh$a;->a(Ljava/lang/Class;)V

    .line 690
    iget-object v3, p0, Lvh$a;->b:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvs;

    .line 693
    .local v0, "e":Lvs;
    :try_start_0
    new-instance v2, Lvi;

    invoke-interface {v0}, Lvs;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lvi;-><init>(Ljava/lang/String;)V

    .line 694
    .local v2, "multiPart":Lvi;
    invoke-interface {v0, v2}, Lvs;->a(Lvp;)V

    .line 695
    iget-object v3, p0, Lvh$a;->b:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    return-void

    .line 697
    .end local v2    # "multiPart":Lvi;
    :catch_0
    move-exception v1

    .line 699
    .local v1, "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lvh$a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 720
    return-void
.end method

.method public final g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 724
    const-class v2, Lvi;

    invoke-direct {p0, v2}, Lvh$a;->a(Ljava/lang/Class;)V

    .line 728
    :try_start_0
    new-instance v0, Lvf;

    invoke-direct {v0}, Lvf;-><init>()V

    .line 729
    .local v0, "bodyPart":Lvf;
    iget-object v2, p0, Lvh$a;->b:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvi;

    invoke-virtual {v2, v0}, Lvi;->a(Lvq;)V

    .line 730
    iget-object v2, p0, Lvh$a;->b:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    return-void

    .line 732
    .end local v0    # "bodyPart":Lvf;
    :catch_0
    move-exception v1

    .line 734
    .local v1, "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 740
    const-class v0, Lvq;

    invoke-direct {p0, v0}, Lvh$a;->a(Ljava/lang/Class;)V

    .line 741
    iget-object v0, p0, Lvh$a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 742
    return-void
.end method

.method public final i()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 771
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
